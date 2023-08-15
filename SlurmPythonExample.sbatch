#!/bin/bash
#SBATCH -JSlurmPythonExample                    # Job name
#SBATCH --account=gts-tgartner3                 # charge account
#SBATCH -N1 --ntasks-per-node=4                 # Number of nodes and cores per node required
#SBATCH --mem-per-cpu=1G                        # Memory per core
#SBATCH -t15                                    # Duration of the job (Ex: 15 mins)
#SBATCH -qinferno                               # QOS Name
#SBATCH -oReport-%j.out                         # Combined output and error messages file
#SBATCH --mail-type=BEGIN,END,FAIL              # Mail preferences
#SBATCH --mail-user=james.kai@gatech.edu        # E-mail address for notifications
cd /storage/home/hcoda1/5/hkai3/demo            # Change to working directory

module load anaconda3/2022.05                   # Load module dependencies
srun python test.py                             # Example Process