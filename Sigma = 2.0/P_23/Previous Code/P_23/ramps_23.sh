#!/bin/sh

#SBATCH --job-name=RP_23
#SBATCH -p gpus
#SBATCH -n 1
#SBATCH --gres=gpu:2
#SBATCH --time 04-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=eq.emmanuel.137@gmail.com

module load singularity/hoomd/2.3.5-CUDA

hoomd.python3 Ramp_78.py
hoomd.python3 Ramp_80.py
hoomd.python3 Ramp_82.py
hoomd.python3 Ramp_84.py
hoomd.python3 Ramp_86.py
hoomd.python3 Ramp_88.py
hoomd.python3 Ramp_90.py
