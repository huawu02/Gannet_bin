# Gannet_bin
To create docker image for Gannet (compiled Matlab application)

Latest version Gannet 3.1 was compiled for Matlab R2018b. Matlab Runtime v9.5 is required to use the binary. Coregistration to the anatomical images and segmentation of the MRS voxel are supported, if the dicom images of the anatomical scan are provided. Use the following command to run:

```
./run_GannetRun.sh $MCRRoot $pfile [$fitting_metabolite] [$anatomical_dicom_dir]
```

To build a docker image from the Dockerfile, run:

```
docker build -t gannet_bin:v3.1 .
``` 

To use the docker image, put the pfile from a MEGA-PRESS scan and a folder with the anatomical dicoms in the same directory (datadir), then run:

```
docker run --rm -ti -v $datadir:/flywheel/v0/input -v $datadir:/flywheel/v0/output \
gannet_bin:v3.1 /bin/bash -c "cd /flywheel/v0/output; \
/bin/run /flywheel/v0/input/$pfile $metabolite /flywheel/v0/input/$anat_dcm_dir"
```
