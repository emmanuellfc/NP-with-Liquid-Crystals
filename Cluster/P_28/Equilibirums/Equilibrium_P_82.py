#!/usr/bin/env python
# coding: utf-8

# # Mesogens with NP | Equilibriums

# ## Temperature: 8.2 | Cluster Run

# ### Date: 21/01/2019 | System P = 2.8, Expected value of $T_c$ : 

# In[1]:


from __future__ import division
import hoomd
import hoomd.md


# In[2]:


#-----Define relevant variables
p_max = 2.8;
t_max = 8.2;
copies = 1;
steps_run = 1e4;
init_file = "T_CM&NP_" + str(t_max) + "_P_" + str(p_max) + "_ramp.gsd"


# In[3]:


#-----Define a simulation context

hoomd.context.initialize("--mode=gpu");


# In[4]:


#-----Extract the configuration of the system and expand the system

snap = hoomd.data.gsd_snapshot(init_file, frame = -1);
snap.replicate(copies,copies,copies);
system = hoomd.init.read_snapshot(snap);


# In[5]:


#-----Define each mesogen in the local reference frame of each center of mass
rigid = hoomd.md.constrain.rigid();
rigid.set_param('M', 
               types = ['A']*8,
               positions = [(-4,0,0),(-3,0,0),(-2,0,0),(-1,0,0),
                            (1,0,0),(2,0,0),(3,0,0),(4,0,0)]);


# In[6]:


#-----Declare molecules as rigid bodies
rigid.create_bodies();


# In[7]:


#-----Define the potential energy
nl = hoomd.md.nlist.tree();
lj = hoomd.md.pair.lj(r_cut = 3.5, nlist = nl);
lj.set_params(mode = 'shift')


# In[8]:


#------Define the interaction
lj.pair_coeff.set('NP','NP', epsilon = 1.0, sigma = 5.0);
lj.pair_coeff.set('M', 'M', epsilon = 1.0, sigma = 1.0);
lj.pair_coeff.set('A', 'A', epsilon = 1.0, sigma = 1.0);
lj.pair_coeff.set('M', 'A', epsilon = 1.0, sigma = 1.0);
lj.pair_coeff.set('NP', 'M', epsilon = 1.0, sigma = 3.0);
lj.pair_coeff.set('NP', 'A', epsilon = 1.0, sigma = 3.0);


# In[9]:


#------Select an standar integrator
hoomd.md.integrate.mode_standard(dt = 0.005);

#-----Define some groups and make their union

nanoparticles = hoomd.group.type(name = 'NPs', type = 'NP');
mesogens = hoomd.group.rigid_center();
groupNP_mes = hoomd.group.union(name = 'NP_Mes', a = nanoparticles, b = mesogens);


# In[10]:


#-----Integrate using NPT

npt = hoomd.md. integrate.npt(group = groupNP_mes, kT = t_max, tau = 10.0, tauP = 10.0, P = p_max);


# In[11]:


#-----Save data

log_file = "T_" + str(t_max) + "_P_" + str(p_max) + "_ramp.log"
gsd_file = "T_" + str(t_max) + "_P_" + str(p_max) + "_ramp.gsd"
meso_gsd_file = "T_CM_" + str(t_max) + "_P_" + str(p_max) + "_ramp.log"

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
gsd = hoomd.dump.gsd(gsd_file, period = 1e2, group = hoomd.group.all(), overwrite = True);
meso_gsd = hoomd.dump.gsd(meso_gsd_file, period=1e2, group = mesogens, overwrite = True);


# In[12]:


#-----Run the simulation

hoomd.run(steps_run)


# In[13]:


#-----Get volume and density information.
system.box.get_volume()


# In[14]:


system.get_metadata()

