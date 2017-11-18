#!/bin/bash

ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:en
ENV LC_ALL ru_RU.UTF-8

# Perform updates & Install EPEL
yum -y update
yum -y install epel-release
# Install Microsoft's Core Fonts
yum -y install curl libgsf policycoreutils-python unixODBC cabextract xorg-x11-font-utils fontconfig ImageMagick msttcore-fonts-installer 
#rpm -ivh https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
# Cleaning cache 
yum clean all
rm -rf /var/cache/yum

