#!/bin/bash

echo "Downloading TractoFlow..."
nextflow pull scilus/tractoflow
echo "Done: TractoFlow downloaded."
echo "Downloading TractoFlow Singularity..."
wget -q --show-progress http://scil.dinf.usherbrooke.ca/containers_list/scilus_1.3.0.sif
echo "Done: TractoFlow Singularity downloaded."
