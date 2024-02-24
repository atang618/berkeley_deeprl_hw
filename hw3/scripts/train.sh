#! /bin/bash

# Define the list of parameters
params=(
    "experiments/sac/hopper.yaml"
    "experiments/sac/hopper_doubleq.yaml"
    "experiments/sac/hopper_clipq.yaml"
)

# Define the command to be executed
command="python cs285/scripts/run_hw3_sac.py -cfg"

# Use GNU Parallel to run the command with different parameters in parallel
parallel -j 3 "$command {}" ::: "${params[@]}"