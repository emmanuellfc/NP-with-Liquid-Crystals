#!/usr/bin/env python
# coding: utf-8

# # Equilibrium

# In[1]:


#-----Import some essential packages

from __future__ import division
import hoomd
import hoomd.md

#-----Some important variables

p_max = 1.4;
t_max = 6.9;
steps = 2e5;

#-----Crea un contexto de simulación

hoomd.context.initialize("--mode=gpu")

#-----Extrae la configuración del centro de masa de las partículas

system = hoomd.init.read_gsd("T_CM_7.0_P_1.4_ramp.gsd",frame = -1)

#-----Define cada mesógeno en el marco de referencia local de cada centro de masa.

rigid = hoomd.md.constrain.rigid();
rigid.set_param('M', 
                types=['A']*8,
                positions=[(-4,0,0),(-3,0,0),(-2,0,0),(-1,0,0),
                           (1,0,0),(2,0,0),(3,0,0),(4,0,0)]);

#-----Declara que las moléculas creadas son cuerpos rígidos

rigid.create_bodies();

#-----Define la energía potencial

nl = hoomd.md.nlist.tree();

lj = hoomd.md.pair.lj(r_cut = 3.5, nlist = nl)
lj.set_params(mode = 'shift')

#-----Define la interacción entre las especies de la simulación

lj.pair_coeff.set('M','M', epsilon = 1.0, sigma = 1.0)
lj.pair_coeff.set('A','A', epsilon = 1.0, sigma = 1.0)
lj.pair_coeff.set('M','A', epsilon = 1.0, sigma = 1.0)

#-----Selecciona un integrador standard

hoomd.md.integrate.mode_standard(dt = 0.005);

#------Define el grupo sobre el cual se integraran las ecuaciones de movimiento

mesogens = hoomd.group.rigid_center();


# In[2]:


#----Integrate using NPT

npt = hoomd.md.integrate.npt(group = mesogens, kT = t_max, tau = 12.5, tauP = 12.5, P = p_max);
npt.randomize_velocities(seed = 42)

#-----Write output and Run the Simulation

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


# In[3]:


hoomd.run(steps)


# In[4]:


system.get_metadata()


