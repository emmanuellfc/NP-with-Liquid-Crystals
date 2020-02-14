#!/usr/bin/env python
# coding: utf-8

# # Equilibrium, 7 = 0

# In[ ]:


#-----Import essential packages.

from __future__ import division
import hoomd
import hoomd.md

#-----Define important variables.

p_max = 1.4;
t_max = 7.0;
steps = 2e5;

#-----Declare a simulation context.

hoomd.context.initialize("--mode=gpu")

#-----Initialize from a .gsd file.

system = hoomd.init.read_gsd("T_CM_7.0_P_1.4_ramp.gsd",frame = -1)

#-----Define ecah mesogen in the local intertial frame of reference of each center of mass.

rigid = hoomd.md.constrain.rigid();
rigid.set_param('M', 
                types=['A']*8,
                positions=[(-4,0,0),(-3,0,0),(-2,0,0),(-1,0,0),
                           (1,0,0),(2,0,0),(3,0,0),(4,0,0)]);

#-----Declare mesogens as rigid bodies.

rigid.create_bodies();

#-----Define the potential energy.

nl = hoomd.md.nlist.tree();

lj = hoomd.md.pair.lj(r_cut = 3.5, nlist = nl)
lj.set_params(mode = 'shift')

#-----Define the interaction between each constituent of the mesogen.

lj.pair_coeff.set('M','M', epsilon = 1.0, sigma = 1.0)
lj.pair_coeff.set('A','A', epsilon = 1.0, sigma = 1.0)
lj.pair_coeff.set('M','A', epsilon = 1.0, sigma = 1.0)

#-----Select an standard integrator.

hoomd.md.integrate.mode_standard(dt = 0.005);

#------Define the group on wich we'll integrate the equations of motion.

mesogens = hoomd.group.rigid_center();


# In[ ]:


#----Integrate using NPT.

npt = hoomd.md.integrate.npt(group = mesogens, kT = t_max, tau = 2.0, tauP = 2.0, P = p_max);
npt.randomize_velocities(seed = 42)

#-----Write output.

log_file = "T_" + str(t_max) + "_P_" + str(p_max) + "_equilibrium.log"
gsd_file = "T_" + str(t_max) + "_P_" + str(p_max) + "_equilibrium.gsd" 
meso_gsd_file = "T_CM_" + str(t_max) + "_P_" + str(p_max) + "_equilibrium.gsd"

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
                         period = 1e3,
                         overwrite = True);
gsd = hoomd.dump.gsd(gsd_file,
               period = 1e3,
               group = hoomd.group.all(),
               overwrite = True); 
meso_gsd = hoomd.dump.gsd(meso_gsd_file,
               period = 1e3,
               group = mesogens,
               overwrite = True); 


# In[ ]:


#-----Run the simulation.

hoomd.run(steps)


# In[ ]:


#-----Get system information(Density and volume).

system.get_metadata()
system.box.get_volume()

