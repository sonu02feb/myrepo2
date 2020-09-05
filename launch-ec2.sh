#!/bin/bash -e
sudo aws ec2 run-instances --image-id ami-04c2d1d01e928b8e2 --count 1 --instance-type t2.micro --key-name mykey --security-group-ids sg-00bef2861b9384de3 --subnet-id subnet-0f1b12466d84e2e14
#sudo aws ec2 describe-instances --instance-ids i-045c5fc0e6415cf7d --output table --query 'Reservations[].Instances[].[Tags[?Key==`Name`] | [0].Value, PrivateIpAddress]'
sudo aws ec2 describe-instances --filters "Name=launch-time,Values=2020-09-05" --output table --query 'Reservations[].Instances[].[Tags[?Key==`Name`] | [0].Value, PrivateIpAddress]'


#sudo aws ec2 run-instances --image-id ami-173d747e --count 1 --instance-type t1.micro --key-name MyKeyPair --security-groups my-sg
#sudo ec2 aws describe-instances --instance-ids i-045c5fc0e6415cf7d
#ami-04c2d1d01e928b8e2
