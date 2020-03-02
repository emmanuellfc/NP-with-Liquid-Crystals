#!/bin/sh

#SBATCH --job-name=EQ_18
#SBATCH -p gpus
#SBATCH -n 1
#SBATCH --gres=gpu:2
#SBATCH --time 04-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=eq.emmanuel.137@gmail.com

module load singularity/hoomd/2.3.5-CUDA

hoomd.python3 Equilibrium_P_72.py
hoomd.python3 Equilibrium_P_74.py
hoomd.python3 Equilibrium_P_76.py
hoomd.python3 Equilibrium_P_78.py
hoomd.python3 Equilibrium_P_80.py
