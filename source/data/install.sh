#!/bin/bash

echo "Downloading TractoFlow..."
wget -q https://github.com/scilus/tractoflow/releases/download/2.1.1/tractoflow-2.1.1.zip
unzip -q tractoflow-2.1.1.zip
rm -rf tractoflow-2.1.1.zip
echo "Done: TractoFlow downloaded."
echo "Downloading TractoFlow Singularity..."
wget -q --show-progress http://scil.dinf.usherbrooke.ca/containers_list/tractoflow_2.1.1_650f776_2020-07-15.img
echo "Done: TractoFlow Singularity downloaded."
