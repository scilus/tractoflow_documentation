Input structure
===============

Two types of input are available in TractoFlow: BIDS and an in-house structure.

BIDS parameter
--------------

We recommend to use ``dcm2bids`` (https://github.com/cbedetti/Dcm2Bids) to create BIDS datasets.

TractoFlow support BIDS as input data using ``--bids YOUR_BIDS_DATASET``. TractoFlow do some verifications
before launching the procssing to validate BIDS format.

In the case that some tags or informations are missing, TractoFlow will create a json file in ``results/Read_BIDS``.
Please complete missing informations and relaunch the pipeline replacing ``--bids YOUR_BIDS_DATASET`` with ``--bids_config results/Read_BIDS/tractoflow_bids_struct.json``.

If you have any problems, contact us on NeuroStar (https://neurostars.org/tag/tractoflow).

Root parameter
--------------

The input root parameter is called using ``--root`` and require the following file
structure:

::

    [root]
    ├── S1
    │   ├── dwi.nii.gz
    │   ├── bval
    │   ├── bvec
    │   ├── rev_b0.nii.gz  (optional)
    │   └── t1.nii.gz
    └── S2
        ├── dwi.nii.gz
        ├── bval
        ├── bvec
        ├── rev_b0.nii.gz  (optional)
        └── t1.nii.gz

The `root` folder must contains subjects folders (e.g. `S1`, `S2`,...). Each subject folder contains the required images:

    * ``dwi.nii.gz`` are the diffusion weighted images.
    * ``bval`` is the b-value file in the FSL format.
    * ``bvec`` is the b-vector file in the FSL format.
    * ``rev_b0.nii.gz`` (optional) is the reversed phase encoded b0 image also called blip-up/blip-down. Used to correct distortion due to diffusion acquisition (`Documentation`_).
    * ``t1.nii.gz`` is the T1 weighted image.

.. _Documentation: https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/topup#topup_-_A_tool_for_estimating_and_correcting_susceptibility_induced_distortions
