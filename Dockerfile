FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y openjdk-8-jdk apt-utils libswitch-perl libxml2 \
    git-core gnupg flex bison gperf pngcrush bc build-essential zip \
    curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lzop schedtool squashfs-tools \
    lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip vim \
    python2.7 python-pip python-dev \
    && ln -sf /usr/bin/python2.7 /usr/bin/python

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH /usr/lib/jvm/java-8-openjdk-amd64/bin:~/bin:$PATH
ENV USER root
