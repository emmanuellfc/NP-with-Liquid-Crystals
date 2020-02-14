#!/usr/bin/env python
# coding: utf-8

# # Equilibrium, P = 2.3 ,T = 5.4

# ## Mesogens with Nanoparticles

# In[1]:


# -----Import essential packages

from __future__ import division
import hoomd
import hoomd.md


# In[2]:


#-----Define important variables

temp = 5.4;
pressure = 2.3;
steps = 1e5;


# In[3]:


#-----Declare the file from wich we'll extract the configuration of the system.

ramp_file = "T_CM&NP_" + str(temp) + "_P_" + str(pressure) + "_ramp.gsd"


# In[4]:


#-----Start from a gsd file

hoomd.context.initialize("--mode=gpu");

#-----Select the trayectory of the center of mass of particles

system = hoomd.init.read_gsd(ramp_file,frame = -1)

#-----Define each rigid body type in the local coordinate system of the body.

rigid = hoomd.md.constrain.rigid();
rigid.set_param('M', 
                types=['A']*8,
                positions=[(-4,0,0),(-3,0,0),(-2,0,0),(-1,0,0),
                           (1,0,0),(2,0,0),(3,0,0),(4,0,0)]);

#-----Instruct the rigid constraint to create the constituent particles

rigid.create_bodies();

#-----Define the potential energy

nl = hoomd.md.nlist.tree()

lj = hoomd.md.pair.lj(r_cut = 3.5, nlist=nl)
lj.set_params(mode='shift')

#-----Define interaction with species in the binary mixture

lj.pair_coeff.set('NP','NP', epsilon = 1.0, sigma = 5.0);
lj.pair_coeff.set('M' ,'M' , epsilon = 1.0, sigma = 1.0);
lj.pair_coeff.set('A' ,'A' , epsilon = 1.0, sigma = 1.0);
lj.pair_coeff.set('M' ,'A' , epsilon = 1.0, sigma = 1.0);
lj.pair_coeff.set('NP','M' , epsilon = 1.0, sigma = 3.0);
lj.pair_coeff.set('NP','A' , epsilon = 1.0, sigma = 3.0);

#-----Select an standard integrator.

hoomd.md.integrate.mode_standard(dt = 0.005);

#------Define some groups and make their union.

nanoparticles = hoomd.group.type(name = 'Nano_Particles', type = 'NP');
mesogens = hoomd.group.rigid_center();
groupNP_mes = hoomd.group.union(name = "NP_Mes", a = nanoparticles, b = mesogens);

#----Integrate using NPT

npt = hoomd.md.integrate.npt(group = groupNP_mes, kT = temp, tau = 10.0, tauP = 10.0, P = pressure);

#-----Write output and Run the Simulation

log_file = "T_" + str(temp) + "_P_" + str(pressure) + "_equilibrium.log"
gsd_file = "T_" + str(temp) + "_P_" + str(pressure) + "_equilibrium.gsd" 
meso_gsd_file = "T_CM_" + str(temp) + "_P_" + str(pressure) + "_equilibrium.gsd"
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
               overwrite=True); 
meso_gsd = hoomd.dump.gsd(meso_gsd_file,
               period = 1e3,
               group = mesogens,
               overwrite=True); 


# In[5]:


#-----Run the simulation.

hoomd.run(steps)


# In[6]:


#-----Get density.

system.get_metadata()


# In[7]:


#-----Get volume.

system.box.get_volume()

