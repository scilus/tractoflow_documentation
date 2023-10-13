#!/bin/bash

echo "Downloading TractoFlow..."
nextflow pull scilus/tractoflow
echo "Done: TractoFlow downloaded."
echo "Downloading TractoFlow Singularity..."
wget -q --show-progress https://scil.usherbrooke.ca/containers/scilus_1.6.0.sif
echo "Done: TractoFlow Singularity downloaded."
