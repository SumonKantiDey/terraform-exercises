#!/bin/bash
sudo apt-get update
sudo apt-get install nginx -y
sudo echo "Terraform Free Tier EC2 Instance" >/var/www/html/index.nginx-debian.html
