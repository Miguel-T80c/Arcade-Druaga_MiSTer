FROM theypsilon/quartus-lite-c5:17.0.2.docker0
LABEL maintainer="theypsilon@gmail.com"
WORKDIR /project
ADD . /project
RUN /opt/intelFPGA_lite/quartus/bin/quartus_sh --flow compile Arcade-Druaga.qpf
CMD cat /project/output_files/Arcade-Druaga.rbf
