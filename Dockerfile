# huawu02/Gannet3.1
# (https://github.com/huawu02/Gannet3.1
#  Forked from richardedden/Gannet3.1)
#
# For data collected using the MEGA-PRESS sequence of CNI.
# First build the Matlab Runtime standalone application,
# then run in command-line:
#
# docker build --no-cache -t huawu02/gannet:v3.1 .
#
#
# Start with the Matlab r2018b runtime container
FROM flywheel/matlab-mcr:v95

# Copy shell script and MCR binary to /bin
COPY run_Gannet.sh /bin/run_Gannet
COPY GannetRun /bin/GannetRun

# change permissions 
RUN chmod +rx /bin/run_Gannet
RUN chmod +x  /bin/GannetRun
