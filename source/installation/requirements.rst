Requirements
============

To run the pipeline you must install `Nextflow`_.
To use our Singularity container, you must install the `Singularity`_ package.

.. _Nextflow: https://www.nextflow.io/
.. _Singularity: https://apptainer.org/

Nextflow
--------

Note that the below sections use ``nextflow`` version ``v21.10.6`` for
illustrative purposes: newer versions might work or be required depending on the
pipeline at issue.

⚠️ Tractoflow is only compatible with ``nextflow`` < v22.x.x ⚠️

Local Computer
##############
1. Before installing check your current version ``java -version``. If return something as ``java version "1.X"`` and X is 8 up to 11, you can skip this step else install java.
2. Install Nextflow:

::

    $> wget https://github.com/nextflow-io/nextflow/releases/download/v21.10.6/nextflow && chmod +x nextflow && \
    echo 'export PATH=$PATH:'$(pwd) >> ~/.bash_profile && source ~/.bash_profile

High Performance computer (HPC)
###############################

1. Try ``module load nextflow/21.10.6`` or check with your administrator or on the HPC website.
2. Use ``wget`` to install Nextflow, change the name, add execution rights and add the Nextflow path in the bash_profile.

::

    $> wget https://github.com/nextflow-io/nextflow/releases/download/v21.10.6/nextflow-21.10.6-all && \
    mv nextflow-21.10.6-all nextflow && \
    chmod +x nextflow && echo 'export PATH=$PATH:'$(pwd) >> ~/.bash_profile && source ~/.bash_profile

Note that a given HPC system might offer (a) readily available ``nextflow``
version(s). If any of provided versions suffice for the pipeline at issue, the
above step can be omitted, and reading the documentation of the HPC system is
encouraged in order to load the suitable version. In the case of the Alliance 
Canada clusters, the above step might be substituted by adding the line
``module load nextflow/21.10.6`` (depending on the desired and available
versions) to the ``.bash_profile`` file and sourcing it.


Singularity
-----------

Our Singularity container currently works on Linux. We highly recommend to use Singularity
on a Linux local computer or on a HPC.

If you want to use Docker on Windows or MacOS, please see the :ref:`docker-tractoflow` section.

Local Computer
##############
Install ``apptainer``. Our current singularity container works only on Linux.

::

    $> sudo apt-get update && sudo apt-get install -y apptainer

High Performance computer (HPC)
###############################

Please try ``module load apptainer`` or check with an administrator or on the HPC website.

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
