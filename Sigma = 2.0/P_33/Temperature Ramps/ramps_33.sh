#!/bin/sh

#SBATCH --job-name=RP_33
#SBATCH -p gpus
#SBATCH -n 1
#SBATCH --gres=gpu:2
#SBATCH --time 04-00:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=eq.emmanuel.137@gmail.com

module load singularity/hoomd/2.3.5-CUDA

hoomd.python3 Ramp_92.py
hoomd.python3 Ramp_94.py
hoomd.python3 Ramp_96.py
hoomd.python3 Ramp_98.py
hoomd.python3 Ramp_100.py
hoomd.python3 Ramp_102.py
hoomd.python3 Ramp_104.py
hoomd.python3 Ramp_106.py
hoomd.python3 Ramp_108.py
hoomd.python3 Ramp_110.py
