#!/usr/bin/env python
# coding: utf-8

# # Mesogens with NP | Pressure Ramps

# ## Pressure: 0.0 -> 0.5

# ### Date: 02/13/2019 | System P = 1.8, Expected value of $T_c$ : 7.09 

# In[ ]:


#-----Importa los paquetes esenciales para correr la simulación.

import hoomd
import hoomd.md

#-----Define las variables que más se repitan, o sean las más importantes.

box         = 12.5;
replicates  = 10;
np_diameter = 5.0;
t_max       = 6.0;
p0 = 0.0;
p1 = 0.5;
steps_ramp = 5e4;
run_time = 2 * steps_ramp

#-------Define la celda unitaria.

hoomd.context.initialize("");
uc = hoomd.lattice.unitcell(N = 1,
                            a1 = [box, 0, 0],
                            a2 = [0, box, 0],
                            a3 = [0, 0, box],
                            dimensions = 3,
                            position = [[0,0,0]],
                            type_name = ['M'],
                            mass = [1.0],
                            moment_inertia = [[0,
                                               1/12*1.0*8**2,
                                               1/12*1.0*8**2]],
                            orientation = [[1, 0, 0, 0]]);

#-----De la lattice obten un snapshot e inicia el sistema desde ahí.

snap = uc.get_snapshot()
snap.replicate(replicates,replicates,replicates)
system = hoomd.init.read_snapshot(snap)


# In[ ]:


#-----Nanopartículas

system.particles.types.add('NP');

    #-----Añade las nanopartículas
    
for nano in range(0,4):
    system.particles.add("NP")
    
    #-----Asigna a una variable las nanopartículas para despues definir sobre éstas sus propiedades.

np_0 = system.particles[1000];
np_1 = system.particles[1001];
np_2 = system.particles[1002];
np_3 = system.particles[1003];

    #-----Especifica el diametro.

np_0.diameter = np_diameter;
np_1.diameter = np_diameter;
np_2.diameter = np_diameter;
np_3.diameter = np_diameter;
    
    #------Declara la posición.

np_0.position = (0,   12.5, 0);
np_1.position = (0,  -12.5, 0);
np_2.position = (0,  37.5, 0);
np_3.position = (0, -37.5, 0);
    
    #------Declara el momento de inercia.
    
np_0.moment_inertia = [0,0,0];
np_1.moment_inertia = [0,0,0];
np_2.moment_inertia = [0,0,0];
np_3.moment_inertia = [0,0,0];


# In[ ]:


#-----Mesógenos

#-----Añande las partículas constituyendes de los mesógenos

system.particles.types.add('A');

    #-----Define cada mesógeno como un cuerpo rígido en un marco de referencia local a cada partícula.
    
rigid = hoomd.md.constrain.rigid();
rigid.set_param('M', 
                types=['A']*8,
                positions=[(-4,0,0),(-3,0,0),(-2,0,0),(-1,0,0),
                           (1,0,0),(2,0,0),(3,0,0),(4,0,0)]);

    #-----Declara el comportamiento de las partículas como el de un cuerpo rígido.

rigid.create_bodies();

#-----Define cómo se calculará la lista de vecinos y el potencial de interacción.

nl = hoomd.md.nlist.tree();

lj = hoomd.md.pair.lj(r_cut = 3.5, nlist = nl)
lj.set_params(mode = 'shift')

#-----Define la interacción entre las partículas de la mezcla.

lj.pair_coeff.set('NP','NP', epsilon = 1.0, sigma = 5.0)
lj.pair_coeff.set('M' , 'M', epsilon = 1.0, sigma = 1.0)
lj.pair_coeff.set('A' , 'A', epsilon = 1.0, sigma = 1.0)
lj.pair_coeff.set('M' , 'A', epsilon = 1.0, sigma = 1.0)
lj.pair_coeff.set('NP', 'M', epsilon = 1.0, sigma = 3.0)
lj.pair_coeff.set('NP', 'A', epsilon = 1.0, sigma = 3.0)

#-----Define el integrador y el grupo sobre el cuál se integrarán las ecuaciones de movimiento.

hoomd.md.integrate.mode_standard(dt = 0.005);

    #------Define los grupos y la unión entre ellos.

nanoparticles = hoomd.group.type(name ='Nano_Particles', type = 'NP')
mesogens = hoomd.group.rigid_center();
groupNP_mes = hoomd.group.union(name = "NP_Mes", a = nanoparticles, b = mesogens)


pressure = hoomd.variant.linear_interp(points = [(0,p0), (steps_ramp, p1)])
npt = hoomd.md.integrate.npt(group = groupNP_mes, kT = t_max, tau = 1.0, tauP = 1.0, P = pressure);
npt.randomize_velocities(seed = 42)

#-----Define los archivos en los que se guardará la información de la simulación. 

log_file = "T_" + str(t_max) + "_P_" + str(p1) + "_ramp.log"
gsd_file = "T_" + str(t_max) + "_P_" + str(p1) + "_ramp.gsd" 
meso_gsd_file = "T_CM&NP_" + str(t_max) + "_P_" + str(p1) + "_ramp.gsd"

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
               group = groupNP_mes,
               overwrite = True); 


# In[ ]:


#-----Run the simulation.

hoomd.run(run_time)


# In[ ]:


#-----Get density.

system.get_metadata()


# In[ ]:


#-----Get volume.

system.box.get_volume()


# In[ ]:




