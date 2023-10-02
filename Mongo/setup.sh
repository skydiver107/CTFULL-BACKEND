#!/bin/bash

# create a directory that will be mapped to the EBS volume and mount it
sudo mkdir /mongo-data

# If this is the first time you are using the EBS volume, it will not have a file system. Use the steps
# below to create a file system
# First to check if a file system has already been created, use this:
# sudo file -s /dev/sdb
# if the output of the command above is: "/dev/sdb: data", then a file system has not been created. 
# Create a file system using the following command
# sudo mkfs -t xfs /dev/sdb

# Assuming a file system has been created, lets mount it to the directory we create above. 
sudo mount /dev/sdb /mongo-data

# you can check if the volume has been mounted properly using df -h. The size of the mounted directory should 
# match the size of the EBS volume