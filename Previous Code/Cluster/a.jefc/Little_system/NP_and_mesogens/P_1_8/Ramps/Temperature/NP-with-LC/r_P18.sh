#!/bin/sh

#SBATCH --job-name=RP_18
#SBATCH -p gpus
#SBATCH --gres=gpu:4
#SBATCH --time 04-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=eq.emmanuel.137@gmail.com

module load singularity/hoomd/2.3.5-CUDA

hoomd.python3 Ramp18.py
