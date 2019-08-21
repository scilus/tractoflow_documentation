Before install
==============

To run the pipeline you must install `Nextflow`_.
To use our Singularity container, you must install the `Singularity`_ package.

.. _Nextflow: https://www.nextflow.io/
.. _Singularity: https://www.sylabs.io/docs/

Nextflow
--------

Local Computer
##############
1. Before installing check your current version ``java -version``. If return something as ``java version "1.X"`` and X is 8 or later, you can skip this step else install java.
2. Install Nextflow:

::

    $> wget https://github.com/nextflow-io/nextflow/releases/download/v19.04.0/nextflow && chmod +x nextflow && \
    echo 'export PATH=$PATH:'$(pwd) >> ~/.bash_profile && source ~/.bash_profile

High Performance computer (HPC)
###############################

1. Try ``module load java/1.8.0_121`` or check with your administrator or on the HPC website.
2. Use ``wget`` to install Nextflow, change the name, add execution rights and add the Nextflow path in the bash_profile.

::

    $> wget https://github.com/nextflow-io/nextflow/releases/download/v19.04.0/nextflow-19.04.0-all && \
    mv nextflow-19.04.0-all nextflow && \
    chmod +x nextflow && echo 'export PATH=$PATH:'$(pwd) >> ~/.bash_profile && source ~/.bash_profile

Singularity
-----------

Our Singularity container currently works on Linux. We highly recommend to use Singularity
on a Linux local computer or on a HPC.

If you want to use Docker on Windows or MacOS, please see the :ref:`docker-tractoflow` section.

Local Computer
##############
Install ``singularity-container``. Our current singularity container works only on Linux.
A macOS version will be released soon.

If you are Debian/Ubuntu, you can get neurodebian:

::

    $> sudo wget -O- http://neuro.debian.net/lists/xenial.us-ca.full | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list && \
    sudo apt-key adv --recv-keys --keyserver hkp://pool.sks-keyservers.net:80 0xA5D32F012649A5A9 && \
    sudo apt-get update && sudo apt-get install -y singularity-container

High Performance computer (HPC)
###############################

Please try ``module load singularity/2.6`` or check with an administrator or on the HPC website.

Docker
------

MacOS
#####

To install Docker on your MacOS computer, please check the following link:

https://hub.docker.com/editions/community/docker-ce-desktop-mac

Windows
#######

To install Docker on your Windows computer, please check the following link:

https://hub.docker.com/editions/community/docker-ce-desktop-windows

