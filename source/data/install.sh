#!/bin/bash

echo "Downloading TractoFlow..."
nextflow pull scilus/tractoflow
echo "Done: TractoFlow downloaded."
echo "Downloading TractoFlow Singularity..."
wget -q --show-progress http://scil.usherbrooke.ca/containers_list/scilus_1.4.0.sif
echo "Done: TractoFlow Singularity downloaded."
