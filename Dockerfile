FROM library/centos:7
ENV LANG zh_TW.UTF-8
ENV LANGUAGE zh_TW.UTF-8
ENV LC_ALL zh_TW.UTF-8

RUN yum -y update
#RUN timedatectl set-timezone Asia/Taipei
RUN ln -fs /usr/share/zoneinfo/Asia/Taipei /etc/localtime

RUN yum install -y libnl*
RUN yum -y install openssl openssl-devel kernel-devel  #可分別安裝
RUN yum -y install gcc gcc-c++ autoconf automake make  #可分別安裝
RUN yum install -y libnfnetlink-devel zlib zlib-devel gcc gcc-c++ openssl openssl-devel openssh 
RUN yum install -y wget
