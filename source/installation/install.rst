Fast Installation
=================

Easy install method
-------------------

Enter this command in your terminal (it downloads the container and TractoFlow code in the current directory - Make sure nextflow is already installed before running this command):
::

    curl -s https://tractoflow-documentation.readthedocs.io/en/2.4.1/install.sh | bash


Detailed Installation
=====================

TractoFlow pipeline
-------------------

Release
#######

Download TractoFlow pipeline:

::

    $> nextflow pull scilus/tractoflow

For developers
##############

Clone TractoFlow pipeline repository:

::

    # Clone with HTTPS
    $> git clone https://github.com/scilus/tractoflow.git

    # Clone with SSH
    $> git clone git@github.com:scilus/tractoflow.git

As a developer you will have to run tractoflow using this command:

::

  nextflow run tractoflow/main.nf --help

.. _singularity-tractoflow:

Singularity for TractoFlow
--------------------------

Release
#######

Download the last release of the Singularity container for TractoFlow:

::

    $> wget http://scil.usherbrooke.ca/containers_list/scilus_1.4.2.sif

Or if you have sudo privileges

::

    $> sudo singularity build scilus_1.4.2.sif docker://scilus/scilus:1.4.2

For developers
##############

Clone the singularity repository for TractoFlow pipeline:

::

    # Clone with HTTPS
    $> git clone https://github.com/scilus/containers-scilus.git

    # Clone with SSH
    $> git clone git@github.com:scilus/containers-scilus.git

Then, you can build the singularity image:

::

    $> singularity build scilus_1.4.2.sif singularity_scilus.def

.. _docker-tractoflow:

Docker for TractoFlow
---------------------

First, change the number of CPUs and RAM (recommended: 8 CPUs and 16Gb of RAM) in
Docker (Preferences -> Advanced) and click on Apply & Restart.

Download the last release of the Docker container for TractoFlow:

::

    $> docker pull scilus/scilus:1.4.2

Please see :ref:`profiles` section to use `macos` profile.
