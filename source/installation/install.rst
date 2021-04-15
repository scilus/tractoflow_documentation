Install
=======

Easy install method
-------------------

Enter this command in your terminal (it downloads the container and TractoFlow code in the current directory):
::

    curl -s https://tractoflow-documentation.readthedocs.io/en/2.2.1/install.sh | bash

TractoFlow pipeline
-------------------

Release
#######

Download the last release of TractoFlow pipeline:

::

    $> wget https://github.com/scilus/tractoflow/releases/download/2.2.1/tractoflow-2.2.1.zip && unzip tractoflow-2.2.1.zip

For developers
##############

Clone TractoFlow pipeline repository:

::

    # Clone with HTTPS
    $> git clone https://github.com/scilus/tractoflow.git

    # Clone with SSH
    $> git clone git@github.com:scilus/tractoflow.git


.. _singularity-tractoflow:

Singularity for TractoFlow
--------------------------

Release
#######

Download the last release of the Singularity container for TractoFlow:

::

    $> wget http://scil.dinf.usherbrooke.ca/containers_list/tractoflow_2.2.1_b9a527_2021-04-13.sif

For developers
##############

Clone the singularity repository for TractoFlow pipeline:

::

    # Clone with HTTPS
    $> git clone https://github.com/scilus/containers-tractoflow.git

    # Clone with SSH
    $> git clone git@github.com:scilus/containers-tractoflow.git

Then, you can build the singularity image:

::

    $> singularity build singularity_name.img singularity_tractoflow.def

.. _docker-tractoflow:

Docker for TractoFlow
---------------------

First, change the number of CPUs and RAM (recommended: 8 CPUs and 16Gb of RAM) in
Docker (Preferences -> Advanced) and click on Apply & Restart.

Download the last release of the Docker container for TractoFlow:

::

    $> docker pull scilus/tractoflow:2.2.1

Please see :ref:`profiles` section to use `macos` profile.
