Options
=======

To display the options of Tractoflow, please use
``nextflow run tractoflow/main.nf --help``.

Options list
------------
``--b0_thr_extract_b0 MAX_VALUE``  (default: 10)
    All b-values below a maximum value are considered b=0 images.

``--dwi_shell_tolerance TOLERANCE`` (default: 20)
    All b-values to +-tolerance are considered as the same b-value.

``--bet_prelim_f THRESHOLD`` (default: 0.16)
    Fractional Intensity threshold (-f for the bet FSL command) for preliminary DWI brain extraction.
    See FSL bet documentation for more info.

``--dilate_b0_mask_prelim_brain_extraction FACTOR`` (default: 5)
    Dilation factor to keep the whole brain and be more robust to the geometric distortions.
    This is only applied to the preliminary BET. Not the final extraction.

``--run_dwi_denoising BOOL`` (default: true)
    Run dwi denoising (dwidenoise from Mrtrix3).
    See Mrtrix3 dwidenoise documentation for more info.

``--extent SIZE`` (default: 7)
    Denoising block size.
    Recommended block size should follow the following rule of thumb: extent^3 >= # directions.
    See Mrtrix3 dwidenoise documentation for more info.

``--run_topup BOOL`` (default: true)
    Run Topup.
    If TractoFlow find any reversed phase encoded b=0 images. Topup
    will be automatically ignored. See FSL Topup documentation for more info.

``--encoding_direction DIRECTION`` (default: y)
    Encoding direction of the DWI [x, y, z].
    See FSL Topup documentation for more info.

``--dwell_time VALUE`` (default: 0.062)
    Dwell-time value.

``--run_eddy BOOL`` (default: true)
    Run Eddy.

``--eddy_cmd COMMAND`` (default: eddy_openmp)
    Eddy command to use [eddy_openmp, eddy_cuda].

``--bet_topup_before_eddy_f THRESHOLD`` (default: 0.16)
    Fractional Intensity threshold (-f for the bet FSL command) for intermediate BET operation
    on topup corrected images.

``--use_slice_drop_correction BOOL`` (default: true)
    If set, will use the slice drop correction option (--repol) from Eddy.

``--bet_dwi_final_f THRESHOLD`` (default: 0.16)
    Fractional Intensity threshold (-f for the bet FSL command) for the final DWI BET.

``--run_resample_dwi BOOL`` (default: true)
    Run resample DWI.
    Resampling is done at the resolution given by --dwi_resolution option.

``--dwi_resolution RESOLUTION`` (default: 1)
    DWI resolution (in mm).

``--dwi_interpolation METHOD`` (default: lin)
    Interpolation method [nn, lin, quad, cubic].

``--number_of_tissues NUMBER`` (default: 3)
    Number of tissue classes (-n for the fast FSL command).

``--fa THRESHOLD`` (default: 0.7)
    Initial FA threshold to compute the fiber response function (FRF).

``--min_fa MIN_THRESHOLD`` (default: 0.5)
    Minimum FA threshold to compute the FRF.

``--roi_radius RADIUS`` (default: 20)
    Region of interest radius to compute the FRF.
    This ROI starts from the center of the 3D volume (sizeX/2, sizeY/2, sizeZ/2).

``--set_frf BOOL`` (default: false)
    Set manually the FRF.

``--manual_frf FRF`` (default: "15,4,4")
    FRF set manually. The FRF must be at 10^-4 scaling in mm^2/s.
    This corresponds to an elongated symmetric diffusion tensor with eigenvalues (15, 4, 4) x 10^-4 mm^2/s along the principal axis and radial axes respectively.

``--mean_frf BOOL`` (default: true)
    Mean the frf of all subjects.
    USE ONLY IF ALL OF SUBJECTS COME FROM THE SAME SCANNER
    AND HAVE THE SAME ACQUISITION.

``--sh_order ORDER`` (default: 8)
    Spherical harmonics order.

    | Suggested rule of thumb :
    | --sh_order=8 for 45+ directions
    | --sh_order=6 for 20+ directions
    | --sh_order=4 otherwise

``--basis BASIS`` (default: descoteaux07)
    fODF spherical harmonics (SH) basis type [descoteaux07, tournier07].

``--fodf_metrics_a_factor FACTOR`` (default: 2.0)
    Multiplicative factor for AFD max in ventricles.
    As recommended in [Dell'Acqua et al HBM 2013].

``--relative_threshold THRESHOLD`` (default: 0.1)
    Relative threshold on fODF amplitude in ]0,1].

``--max_fa_in_ventricle THRESHOLD`` (default: 0.1)
    Maximal threshold of FA to be considered as ventricule voxel.
    Used to compute the ventricules mask and find the maximum fODF amplitude in the ventricules.

``--min_md_in_ventricle THRESHOLD`` (default: 0.003)
    Minimal threshold of MD in mm^2/s to be considered as ventricule voxel.
    Used to compute the ventricules mask and find the maximum fODF amplitude in the ventricules.

``--wm_seeding BOOL`` (default: true)
    If '--wm_seeding true', use the WM-GM interface and the WM mask as seeding mask,
    else use the WM-GM interface as seeding mask.

``--algo ALGO`` (default: prob)
    Tracking algorithm [prob, det].

    | prob: streamline probabilistic.
    | det: streamline deterministic.

``--seeding TYPE`` (default: npv)
    Seeding type [npv, nt].

    | npv: number of seeds per voxel of the seeding mask
    | nt: total number of seeds randomly placed in the seeding mask

``--nbr_seeds NUMBER`` (default: 10)
    Number of seeds related to the seeding type param.

``--random SEED`` (default: 0)
    Random seed.
    Fixed for reproducible seeds

``--step SIZE`` (default: 0.1)
    Step size in mm.

``--theta ANGLE`` (default: 20)
    Maximum angle between 2 steps in degrees.

``--min_len LENGTH`` (default: 20)
    Minimum length in mm.

``--max_len LENGTH`` (default: 200)
    Maximum length in mm.

``--compress_streamlines BOOL`` (default: true)
    Compress streamlines.

``--compress_value THRESHOLD`` (default: 0.2)
    Compression error threshold in mm.
    See [Presseau et al Neuroimage 2015] and [Rheault et al Front Neuroinform 2017]

``--template_t1 PATH`` (default: /human-data/mni_152_sym_09c/t1)
    Path to the template T1 directory for antsBrainExtraction.
    The folder must contain t1_template.nii.gz and t1_brain_probability_map.nii.gz.
    The default path is the human_data folder in the Singularity/Docker container.

``--processes_brain_extraction_t1 NUMBER`` (default: 4)
    Number of processes for T1 brain extraction task.

``--processes_denoise_dwi NUMBER`` (default: 4)
    Number of processes for DWI denoising task.

``--processes_denoise_t1 NUMBER`` (default: 4)
    Number of processes for T1 denoising task.

``--processes_eddy NUMBER`` (default: 1)
    Number of processes for eddy task.

``--processes_fodf NUMBER`` (default: 4)
    Number of processes for fODF task.

``--processes_registration NUMBER`` (default: 4)
    Number of processes for registration task.

``--output_dir PATH`` (default: ./results)
    Directory where to write the final results.

``--processes NUMBER`` (default: Maximum number of threads)
    The number of parallel processes to launch.
    Only affects the local scheduler.
