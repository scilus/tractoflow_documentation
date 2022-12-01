Input structure
===============

Two types of input are available in TractoFlow: BIDS and an in-house structure.

BIDS parameter
--------------

We recommend to use ``dcm2bids`` (https://github.com/unfmontreal/Dcm2Bids) to create BIDS datasets.

TractoFlow supports BIDS as input data using ``--bids YOUR_BIDS_DATASET``. TractoFlow does some verifications
before launching the processing to valide the BIDS format.

In the case that some tags or informations are missing, TractoFlow will create a json file in ``results/Read_BIDS``.
Please complete missing informations and relaunch the pipeline replacing ``--bids YOUR_BIDS_DATASET`` with ``--bids_config results/Read_BIDS/tractoflow_bids_struct.json``.

If you have a BIDS structure and want to use `-profile ABS` you need to use the `--fs` option to point to your freesurfer folder output.

If you have any problems, contact us on NeuroStar (https://neurostars.org/tag/tractoflow).

Root parameter
--------------

It is possible not to follow the BIDS format. In that case, the input root parameter
is called using ``--input`` and requires the following file structure:

::

    [root]
    ├── S1
    │   ├── dwi.nii.gz
    │   ├── bval
    │   ├── bvec
    │   ├── t1.nii.gz
    │   ├── rev_b0.nii.gz  (optional)
    │   ├── aparc+aseg.nii.gz (optional)
    │   └── wmparc.nii.gz  (optional)
    └── S2
        ├── dwi.nii.gz
        ├── bval
        ├── bvec
        ├── t1.nii.gz
        ├── rev_b0.nii.gz  (optional)
        ├── aparc+aseg.nii.gz (optional)
        └── wmparc.nii.gz  (optional)

The `root` folder must contains subjects folders (e.g. `S1`, `S2`,...). Each subject folder contains the required images:

    * ``dwi.nii.gz`` are the diffusion weighted images.
    * ``bval`` is the b-value file in the FSL format.
    * ``bvec`` is the b-vector file in the FSL format.
    * ``t1.nii.gz`` is the T1 weighted image.
    * ``rev_b0.nii.gz`` (optional) is the reversed phase encoded b0 image also called blip-up/blip-down. Used to correct distortion due to diffusion acquisition (`Documentation`_).
    * ``aparc+aseg.nii.gz`` (optional) is the freesurfer gm segmented image.
    * ``wmparc.nii.gz`` (optional) is the freesurfer wm segmented image.


.. _Documentation: https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/topup#topup_-_A_tool_for_estimating_and_correcting_susceptibility_induced_distortions
