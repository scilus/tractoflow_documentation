Results
=======

The pipeline creates 2 folders: ``results`` and ``work``. The files in results
are symlinks in works. We highly recommend to not remove work folder. 

To transfert or copy-paste the ``results`` folder, please use one of the following
commands:

::

    # On local computer
    $> cp -rL results NEW_PATH/results

    # On HPC
    $> rsync -rL login@adress:/HPC_PATH/results NEW_PATH/results
