.. _profiles:

Profiles
========

To select one or multiple profiles, please use the ``-profile`` option. For example:

::

    $> nextflow run tractoflow/main.nf --root input_folder --dti_shells "DTI_SHELLS" --fodf_shells "FODF_SHELLS" -profile macos,fully_reproducible -with-singularity singularity_name.img -resume

Profiles available
------------------

``macos``
    When this profile is used, TractoFlow will modify a parameter (scratch) for MacOS users.

``use_cuda``
    When this profile is used, TractoFlow will use eddy_cuda for Eddy process. This feature is available with NVidia GPUs only.
    Without this profile, TractoFlow will run eddy_openmp.

``fully_reproducible``
    When this profile is used, all the parameters will be set to have 100% reproducible results.
    This profile consist to set multi-thread parameters to be fully reproducible [Theaud20].
