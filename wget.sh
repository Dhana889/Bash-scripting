#!/bin/bash

#######################################
### Bash Script to Install Prometheus using wget ###
### Version: V1 ###
### Date: 19/JUL/2024 ###
#######################################

echo "Downloading binary for prometheus tool"

if [ -e /home/dhnlinux/prometheus/prometheus-2.45.6.linux-amd64.tar.gz ];
then
	echo "prometheus-2.45.6.linux-amd64.tar.gz already exists, starting to extract"
	tar -zxvf /home/dhnlinux/prometheus/prometheus-2.45.6.linux-amd64.tar.gz
else
	echo "binary does not exist, initiating download"
	wget https://github.com/prometheus/prometheus/releases/download/v2.45.6/prometheus-2.45.6.linux-amd64.tar.gz
	mv *.tar.gz /home/dhnlinux/prometheus/
	tar -zxvf /home/dhnlinux/prometheus/prometheus-2.45.6.linux-amd64.tar.gz
fi

echo "File has been extracted, you can start prometheus"
