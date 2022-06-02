#!/bin/bash

echo "Downloading TractoFlow..."
wget -q https://github.com/scilus/tractoflow/releases/download/2.3.0/tractoflow-2.3.0.zip
unzip -q tractoflow-2.3.0.zip
rm -rf tractoflow-2.3.0.zip
echo "Done: TractoFlow downloaded."
echo "Downloading TractoFlow Singularity..."
wget -q --show-progress http://scil.dinf.usherbrooke.ca/containers_list/scilus_1.3.0.sif
echo "Done: TractoFlow Singularity downloaded."
