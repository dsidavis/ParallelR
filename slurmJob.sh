#!/bin/bash -l

module load R

# Name of the job - you'll probably want to customize this.
SBATCH --job-name=myslurmRjob

# Tell Gauss how much memory per CPU your job will use:
#SBATCH --mem-per-cpu=1000

# Array job specifications:
SBATCH --array=1-100

# Standard out and Standard Error output files with the job number in the name.
SBATCH -o myslurmRjob_%j.out
SBATCH -e myslurmRjob_%j.err

# Execute each of the jobs with a different index (the R script will then process
# this to do something different for each index):
srun R --vanilla --no-save --args ${SLURM_ARRAY_TASK_ID} < /path/to/Rscript/slurmJob.R 
