#!/bin/bash
#SBATCH --job-name=waste_management
#SBATCH --nodes=1            # one node per job (adjust if needed)
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=40    # adjust if your script is multi-threaded
#SBATCH --time=30:00:00      # adjust wall time as needed
#SBATCH --output=logs/%A_%a.out
#SBATCH --error=logs/%A_%a.err


python run_instance_1.py