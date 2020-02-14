from __future__ import division
from hoomd import *
from hoomd import md


for i in range(0,11):
    p_max = 2.3
    t1 = 9 + 0.2 * i
    t2 = 9 + 0.2 *(i + 1)
    steps_ramp = 5e4
    
    ramp_file = "T_CM&NP_" + str(t1) + "_P_" + str(p_max) + "_ramp.gsd"
    
    context.initialize("--mode=gpu")
    system = init.read_gsd(ramp_file, frame = -1)
    rigid = md.constrain.rigid()
    rigid.set_param('M', 
                types = ['A']*8,
                positions = [(-4,0,0),(-3,0,0),(-2,0,0),(-1,0,0),
                           (1,0,0),(2,0,0),(3,0,0),(4,0,0)])
    rigid.create_bodies()
    
    nl = md.nlist.tree()
    lj = md.pair.lj(r_cut = 3.5, nlist = nl)
    lj.set_params(mode = 'shift')

    lj.pair_coeff.set('NP','NP', epsilon = 1.0, sigma = 5.0)
    lj.pair_coeff.set('M' ,'M' , epsilon = 1.0, sigma = 1.0)
    lj.pair_coeff.set('A' ,'A' , epsilon = 1.0, sigma = 1.0)
    lj.pair_coeff.set('M' ,'A' , epsilon = 1.0, sigma = 1.0)
    lj.pair_coeff.set('NP','M' , epsilon = 1.0, sigma = 3.0)
    lj.pair_coeff.set('NP','A' , epsilon = 1.0, sigma = 3.0)
    md.integrate.mode_standard(dt = 0.005)
    
    #------Define some groups and make their union.

    nanoparticles = group.type(name = 'Nano_Particles', type = 'NP')
    mesogens = group.rigid_center()
    groupNP_mes = group.union(name = "NP_Mes", a = nanoparticles, b = mesogens)

    #----Integrate using an NPT integrator.

    temp = variant.linear_interp(points = [(0,t1), (steps_ramp, t2)])

    npt = md.integrate.npt(group = groupNP_mes, kT = temp, tau = 10.0 , tauP = 1.0, P = p_max)
    npt.randomize_velocities(seed=42)

    #-----Save .log y .gsd data.

    log_file = "T_" + str(t1) + "_P_" + str(p_max) + "_ramp.log"
    gsd_file = "T_" + str(t1) + "_P_" + str(p_max) + "_ramp.gsd" 
    meso_gsd_file = "T_CM&NP_" + str(t1) + "_P_" + str(p_max) + "_ramp.gsd"

    log = analyze.log(filename = log_file, quantities = ['num_particles',
                                     'ndof',
                                     'translational_ndof',
                                     'rotational_ndof',
                                     'potential_energy',
                                     'kinetic_energy',
                                     'translational_kinetic_energy',
                                     'rotational_kinetic_energy',
                                     'temperature',
                                     'pressure',
                                      'volume'], period = 1e3, overwrite = True)
    gsd = dump.gsd(gsd_file, period = 1e3, group = group.all(), overwrite = True); 
    meso_gsd = dump.gsd(meso_gsd_file, period = 1e3, group = groupNP_mes, overwrite = True); 
    run(steps_ramp)