#!/bin/sh

#SBATCH --job-name=EQP_23
#SBATCH -p gpus
#SBATCH -n 1 #### 20
#SBATCH --gres=gpu:2 ### 4 o 8
#SBATCH --time 04-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=eq.emmanuel.137@gmail.com

module load singularity/hoomd/2.3.5-CUDA

hoomd.python3 Equilibrium_T_70.py
hoomd.python3 Equilibrium_T_72.py
hoomd.python3 Equilibrium_T_74.py
hoomd.python3 Equilibrium_T_76.py
hoomd.python3 Equilibrium_T_78.py
hoomd.python3 Equilibrium_T_80.py
hoomd.python3 Equilibrium_T_82.py
hoomd.python3 Equilibrium_T_84.py
hoomd.python3 Equilibrium_T_86.py
hoomd.python3 Equilibrium_T_88.py
hoomd.python3 Equilibrium_T_90.py