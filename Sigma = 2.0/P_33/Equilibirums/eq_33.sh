#!/bin/sh

#SBATCH --job-name=EQ_218
#SBATCH -p gpus
#SBATCH -n 1
#SBATCH --gres=gpu:2
#SBATCH --time 04-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=eq.emmanuel.137@gmail.com

module load singularity/hoomd/2.3.5-CUDA

hoomd.python3 Equilibrium_P_90.py
hoomd.python3 Equilibrium_P_92.py
hoomd.python3 Equilibrium_P_94.py
hoomd.python3 Equilibrium_P_96.py
hoomd.python3 Equilibrium_P_98.py
hoomd.python3 Equilibrium_P_100.py
hoomd.python3 Equilibrium_P_102.py
hoomd.python3 Equilibrium_P_104.py
hoomd.python3 Equilibrium_P_106.py
hoomd.python3 Equilibrium_P_108.py
hoomd.python3 Equilibrium_P_110.py