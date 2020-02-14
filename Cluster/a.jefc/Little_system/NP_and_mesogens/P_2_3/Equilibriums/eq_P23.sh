#!/bin/sh

#SBATCH --job-name=EQP_23
#SBATCH -p gpus
#SBATCH -n 1 #### 20
#SBATCH --gres=gpu:2 ### 4 o 8
#SBATCH --time 04-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=eq.emmanuel.137@gmail.com

module load singularity/hoomd/2.3.5-CUDA

hoomd.python3 Equilibrium_52.py
hoomd.python3 Equilibrium_54.py
hoomd.python3 Equilibrium_56.py
hoomd.python3 Equilibrium_58.py
hoomd.python3 Equilibrium_60.py
hoomd.python3 Equilibrium_62.py
hoomd.python3 Equilibrium_64.py
hoomd.python3 Equilibrium_66.py
hoomd.python3 Equilibrium_68.py
hoomd.python3 Equilibrium_70.py
