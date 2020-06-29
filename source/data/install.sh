#!/bin/bash

echo "Downloading TractoFlow..."
wget -q https://github.com/scilus/tractoflow/releases/download/2.1.0/tractoflow-2.1.0.zip
unzip -q tractoflow-2.1.0.zip
rm -rf tractoflow-2.1.0.zip
echo "Done: TractoFlow downloaded."
echo "Downloading TractoFlow Singularity..."
wget -q --show-progress http://scil.usherbrooke.ca/containers_list/tractoflow_2.1.0_feb64b9_2020-05-29.img
echo "Done: TractoFlow Singularity downloaded."
