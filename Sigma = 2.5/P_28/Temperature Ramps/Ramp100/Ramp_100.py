from __future__ import division
import os
import hoomd
import hoomd.md

for i in range(1, 6):
    principal_diretcory = os.getcwd()
    p_max = 2.8
    t_0   = 9.8 
    t_1   = 10.0
    steps_ramp = 1e4
    ramp_file = "T_CMNP_" + str(t_0) + "_P_" + str(p_max) + "_ramp.gsd"
    tau_T = i * 0.1 + 2.5
    file_dirs = 'Tau_T_' + str(tau_T)
    os.makedirs(file_dirs, exist_ok=True)
    cp1 = "cp " + ramp_file + " " +  file_dirs
    os.system(cp1)
    os.chdir(file_dirs)
    for j in range(3, 11):
        tau_P = j * 0.1
        sub_dirs = 'Tau_P_' + str(tau_P)
        os.makedirs(sub_dirs,exist_ok=True)
        cp2 = "cp " + ramp_file + " " +  sub_dirs
        os.system(cp2)
        os.chdir(sub_dirs)

        hoomd.context.initialize("")

        system = hoomd.init.read_gsd(ramp_file, frame = -1);

        rigid = hoomd.md.constrain.rigid();
        rigid.set_param('M', 
                types = ['A']*8,
                positions = [(-4,0,0),(-3,0,0),(-2,0,0),(-1,0,0),
                           (1,0,0),(2,0,0),(3,0,0),(4,0,0)]);
        rigid.create_bodies();
        nl = hoomd.md.nlist.tree();
        lj = hoomd.md.pair.lj(r_cut = 3.5, nlist = nl)
        lj.set_params(mode = 'shift')
        lj.pair_coeff.set('NP','NP', epsilon = 1.0, sigma = 5.0);
        lj.pair_coeff.set('M' ,'M' , epsilon = 1.0, sigma = 1.0);
        lj.pair_coeff.set('A' ,'A' , epsilon = 1.0, sigma = 1.0);
        lj.pair_coeff.set('M' ,'A' , epsilon = 1.0, sigma = 1.0);
        lj.pair_coeff.set('NP','M' , epsilon = 1.0, sigma = 3.0);
        lj.pair_coeff.set('NP','A' , epsilon = 1.0, sigma = 3.0);
        hoomd.md.integrate.mode_standard(dt = 0.005);
        nanoparticles = hoomd.group.type(name = 'Nano_Particles', type = 'NP');
        mesogens = hoomd.group.rigid_center();
        groupNP_mes = hoomd.group.union(name = "NP_Mes", a = nanoparticles, b = mesogens);
        temp = hoomd.variant.linear_interp(points = [(0,t_0), (steps_ramp, t_1)]);
        npt = hoomd.md.integrate.npt(group = groupNP_mes, kT = temp, tau = tau_T, tauP = tau_P, P = p_max);
        npt.randomize_velocities(seed=42)
        log_file = "T_" + str(t_1) + "_P_" + str(p_max) + "_ramp.log"
        gsd_file = "T_" + str(t_1) + "_P_" + str(p_max) + "_ramp.gsd" 
        meso_gsd_file = "T_CM&NP_" + str(t_1) + "_P_" + str(p_max) + "_ramp.gsd"
        log = hoomd.analyze.log(filename = log_file,
                         quantities = ['num_particles',
                                     'ndof',
                                     'translational_ndof',
                                     'rotational_ndof',
                                     'potential_energy',
                                     'kinetic_energy',
                                     'translational_kinetic_energy',
                                     'rotational_kinetic_energy',
                                     'temperature',
                                     'pressure',
                                      'volume'],
                         period = 1e2,
                         overwrite = True);
        gsd = hoomd.dump.gsd(gsd_file,
               period = 1e2,
               group = hoomd.group.all(),
               overwrite = True);
        hoomd.run(steps_ramp)
        system.get_metadata()
        system.box.get_volume()
    os.chdir(principal_diretcory)
