Install
=======

TractoFlow pipeline
-------------------

Release
#######

Download the last release of TractoFlow pipeline:

::

    $> wget https://github.com/scilus/tractoflow/releases/download/2.1.0/tractoflow-2.1.0.zip && unzip tractoflow-2.1.0.zip

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

    $> wget http://scil.usherbrooke.ca/containers_list/tractoflow_2.1.0_feb64b9_2020-05-29.img

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

    $> docker pull scilus/docker-tractoflow:2.1.0

Please see :ref:`profiles` section to use `macos` profile.
