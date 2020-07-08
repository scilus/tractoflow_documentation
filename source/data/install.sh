#!/bin/bash

echo "Downloading TractoFlow..."
wget -q https://github.com/scilus/tractoflow/releases/download/2.1.1/tractoflow-2.1.1.zip
unzip -q tractoflow-2.1.1.zip
rm -rf tractoflow-2.1.1.zip
echo "Done: TractoFlow downloaded."
echo "Downloading TractoFlow Singularity..."
wget -q --show-progress http://scil.usherbrooke.ca/containers_list/tractoflow_2.1.0_5f749f3_2020-06-29.img
echo "Done: TractoFlow Singularity downloaded."
