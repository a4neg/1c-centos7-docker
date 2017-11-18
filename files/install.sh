#!/bin/bash

# Perform updates & Install EPEL
yum -y update
yum -y install epel-release
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-nux.ro
# Install Microsoft's Core Fonts
yum -y install curl libgsf policycoreutils-python unixODBC cabextract xorg-x11-font-utils fontconfig ImageMagick msttcore-fonts-installer libatk
#rpm -ivh https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
# Cleaning cache 
yum clean all
rm -rf /var/cache/yum

