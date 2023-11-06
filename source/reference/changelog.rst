Changelog
=========

2.4.3
########
Date: October 2023

New features
  - Tractoflow is not fully working with scilpy 1.6.0
  - Profile use_cuda is deprecated and replaced by use_gpu.
  - Profile use_gpu enables gpu implementation of local_tracking.
  - [BF] BIDS is fully supported with eddy/topup.

2.4.2
########
Date: March 2023

New features
  - Tractoflow is not fully working with a python 3.10 environnment with scilpy 1.5.0

2.4.1
########
Date: November 2022

New features
  - Automatic extraction of shells when computing DTI and fODF
  - Skip step bet_prelim_dwi when not needed
  - Add remove_invalid step in Tracking processes
  - Add possibility for complex BIDS structure with multiband acquisition and full reverse encoding acquisitions. (only available with cuda profile)
  - New profile "bundling". It will activate custom tracking parameters to improve recobundle results. Local tracking will be enable with fa seeding mask and tracking mask.
  - New profile "connectomics". It will activate custom tracking parameters to improve connectomics analysis.

2.3.0
########
Date: 05 April 2022

New features
  - New profile Atlas Based Segmentation (-profile ABS)
  - New profile "skip preprocessing" for HCP dataset (-profile skip_preprocessing)
  - Add option to compute dwi sh (-sh_fitting true)
  - Gibbs correction (-run_gibbs_correction true)


2.2.1
#########
Date: 09 April 2021

Bug Fixed:
  - fully reproducible (ANTS_RANDOM_SEED fixed)
  - Tracking with FA (typo)

New options:
  - participants_label: select specific subjects (BIDS input)
  - clean_bids: remove subject that are not complete (BIDS input)

2.1.1
#########
Date: 08 Jul 2020

New features:

  - Support 4D reverse B0 images.

2.1.0
#########
Date: 29 Jun 2020

New features:

- BIDS support
- Partitions (External drive, etc) automatically mounted. No supplementary config file needed
- New processing profiles: use_cuda (for eddy_cuda use), fully_reproducible, macos

New options:

- run_t1_denoising: Activate or deactivate T1 denoising

2.0.1
#########
Date: 8 May 2019

Modify normalization mask and change some default option values

2.0.0
#########
Date: 27 Mar 2019

First release for public access
