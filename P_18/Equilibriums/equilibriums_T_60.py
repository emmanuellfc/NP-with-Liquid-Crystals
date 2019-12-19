from hoomd import *
from hoomd import md
import os
import shutil

for i in range(0,11):
        temp = 6 + 0.2 * i
        press = 1.8
        init_file = "T_CM&NP_" + str(temp) + "_P_" + str(press) + "_ramp.gsd"
        restart_file = "T_CM&NP_" + str(temp) + "_P_" + str(press) + "_restart.gsd"
        log_file = "T_" + str(temp) + "_P_" + str(press) + "_equilibrium.log"
        gsd_file = "T_" + str(temp) + "_P_" + str(press) + "_equilibrium.gsd"
        directory_file = "T_" + str(temp) + "_P_" + str(press) + "_equilibrium"


        context.initialize("")

        init.read_gsd(filename = init_file, frame = -1)

        rigid = md.constrain.rigid()
        rigid.set_param('M',
                        types = ['A']*8,
                        positions=[(-4,0,0),(-3,0,0),(-2,0,0),(-1,0,0),(1,0,0),(2,0,0),(3,0,0),(4,0,0)])
        rigid.create_bodies()

        nl = md.nlist.tree()
        lj = md.pair.lj(r_cut = 3.5, nlist = nl)
        lj.set_params(mode='shift')

        lj.pair_coeff.set('NP', 'NP', epsilon = 1.0, sigma = 5.0)
        lj.pair_coeff.set('M', 'M', epsilon = 1.0, sigma = 5.0)
        lj.pair_coeff.set('A', 'A', epsilon = 1.0, sigma = 5.0)
        lj.pair_coeff.set('M', 'A', epsilon = 1.0, sigma = 5.0)
        lj.pair_coeff.set('NP', 'M', epsilon = 1.0, sigma = 5.0)
        lj.pair_coeff.set('NP', 'A', epsilon = 1.0, sigma = 5.0)

        md.integrate.mode_standard(dt = 0.005)

        nanoparticles = group.type(name='NPs', type='NP')
        mesogens = group.rigid_center()
        groupNP_mes = group.union(name='NP_Mes', a = nanoparticles, b = mesogens)
    
        npt = md.integrate.npt(group = groupNP_mes, kT = 3.3,tau = 10.0, P = temp, tauP = 10.0)

        gsd_restart = dump.gsd(filename = restart_file, group = groupNP_mes, truncate = True, period = 1e4, phase = 0)

        log = analyze.log(filename = log_file,
        quantities = ['num_particles','ndof','translational_ndof','rotational_ndof','potential_energy',
                    'kinetic_energy','translational_kinetic_energy','rotational_kinetic_energy','temperature','pressure','volume'],
        period = 1e3,overwrite = True)
            
        gsd = dump.gsd(gsd_file,
               period = 1e3,
               group = group.all(),
               overwrite = True)
        
        run(1e4)
        if not os.path.exists(directory_file):
            os.makedirs(directory_file) 
        else:
            pass
        shutil.move(os.path.join(log_file), os.path.join(directory_file, log_file))
        shutil.move(os.path.join(gsd_file), os.path.join(directory_file, gsd_file))