#!/bin/bash
#SBATCH -A snic2020-5-195
#SBATCH -N 1
#SBATCH --tasks-per-node=8
#SBATCH --mem-per-cpu=100
#SBATCH -t 168:00:00
#SBATCH -J TLL_eq_8

module purge
module load GCC
module load CMake
module load pybind11

cd SLURM_SUBMIT_DIR

OMP_NUM_THREADS=8;/home/marpoli/Work/faunus_parallel/faunus -i tll.json  -o tll.out
