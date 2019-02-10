#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
aws s3 cp s3://s3websitebucket20190210/ /var/www/html --recursive
