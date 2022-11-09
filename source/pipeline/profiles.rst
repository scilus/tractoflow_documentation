.. _profiles:

Profiles
========

To select one or multiple profiles, please use the ``-profile`` option. For example:

::

    $> nextflow run tractoflow -r 2.4.0 --root input_folder -profile macos,fully_reproducible -with-singularity singularity_name.sif -resume

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

``cbrain``
    When this profile is used, Nextflow will copy all the output files in publishDir and not use symlinks.

``ABS``
    When this profile is used, TractoFlow-ABS (Atlas Based Segmentation) is used.
    This profile must be used for pathological data.
    The aparc+aseg.nii.gz and wmparc.nii.gz must be in the same space than t1.nii.gz

``bundling``
    When this profile is used, it will activate custom tracking parameters to improve recobundle results.

``connectomics``
    When this profile is used, it will activate custom tracking parameters to improve connectomics analysis.
