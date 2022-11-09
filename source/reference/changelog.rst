Changelog
=========

2.4.0
########
Date: October 2022

New features


2.4.0
########
Date: 05 April 2022

New features
  - New profile Atlas Based Segmentation (-profile ABS)
  - New profile "skip preprocessing" for HCP dataset (-profile skip_preprocessing)
  - New profile "bundling" to run tracking spec skip preprocessing for HCP dataset (-profile skip_preprocessing)
  - New profile
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
