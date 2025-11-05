Welcome to the TractoFlow user documentation!
=============================================

.. note::
    New release available:  2.4.4.

TractoFlow pipeline is developed by the Sherbrooke Connectivity Imaging Lab (`SCIL`_)
in order to process diffusion MRI dataset from the raw data to the tractography.
The pipeline is based on Nextflow and Singularity. The goal with this pipeline
is to be fast and reproducible.

.. _SCIL: http://scil.usherbrooke.ca/en/

Use TractoFlow in published works should be accompanied by the following citation:

    Theaud, G., Houde, J.-C., Boré, A., Rheault, F., Morency, F., Descoteaux, M.,TractoFlow:
    A robust, efficient and reproducible diffusion MRI pipeline leveraging Nextflow & Singularity,
    NeuroImage,  https://doi.org/10.1016/j.neuroimage.2020.116889.

Other citations can be added if TractoFlow is used in a publication. Please see :ref:`references`

For Linux users, please see this section :ref:`singularity-tractoflow` for setup.

For MacOS users, please see this section :ref:`docker-tractoflow` for setup.

For any issues or difficulties with TractoFlow, please use our Neurostar tag: https://neurostars.org/tag/tractoflow

.. tip::
    If you want to analyse datasets with white-matter lesions use profile ABS.

.. toctree::
   :maxdepth: 1
   :caption: Install

   installation/requirements
   installation/install

.. toctree::
   :maxdepth: 1
   :caption: Pipeline

   pipeline/steps
   pipeline/input

   pipeline/options
   pipeline/profiles
   pipeline/launch
   pipeline/results

.. toctree::
    :maxdepth: 1
    :caption: Reference

    reference/references
    reference/contact
    reference/changelog
    reference/github
    reference/license
