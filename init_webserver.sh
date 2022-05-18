#!/bin/bash

# Create mount volume for logs
  sudo su - root
  mkfs.ext4 /dev/sdf
  mount -t ext4 /dev/sdf /var/log

# Install & Start nginx server
  yum search nginx 
  amazon-linux-extras install nginx1 -y
  systemctl start nginx
  systemctl enable nginx
  
# Print the hostname which includes instance details on nginx homepage  
  sudo echo Hello World > /usr/share/nginx/html/index.html

##############install aws cli ###############
sudo yum install epel-release -y
sudo yum install python-pip -y
sudo pip install awscli -y
