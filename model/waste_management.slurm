#!/bin/bash
#SBATCH --job-name=waste_management
#SBATCH --partition=highmem
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12     # highmem nodes only have 12 cores
#SBATCH --mem=0                # “0” = give me the whole node’s 1.5 TB
#SBATCH --time=5-00:00:00
#SBATCH --output=logs/%j.out
#SBATCH --error=logs/%j.err

module load anaconda/2021.11
source activate myenv

mkdir -p logs
cd $SLURM_SUBMIT_DIR/model
python results.py
