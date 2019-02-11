# Elastic File System

- EFS is a file storage service for EC2 instances.
- easy to use, simple interface
- storage capacity is elastic, growing and shrinking automatically as you add or remove files
- supports NFSv4 Network File System protocol
- only pay for the storage you need
- scale up to petabytes
- thousands of concurrent connections
- data is stored in multiple AZs within a region
- block based storage
- read after write consistency

## Creating a EFS
- select EFS under Storage
- Create File System
- Select VPC
- create mount targets
  - recommended to have one mount target per AZ so that EC2 instances across all AZs in the VPC can access the EFS
  - IP addresses are allocated automatically
- assign SG

- provision 2 EC2 instances in different AZs and ensure they are in the same security group as the EFS
- also provision an ELB
- return to the EFS and check the mount instructions
- ssh into the EC2 instances, and run the mount command `sudo mount -t nfs4 $(curl -s https://169.254.169.254/latest/meta-data/placement/availability-zone).fs-<some-id>.efs.<region>.amazonaws.com:/ /var/ww/html` to mount to the /var/ww/html directory
- create an index file on one instance
  - note that it will immediately appear on the other instance as well

## Exam
- serves as centralized repository across all EC2 instances
- user level permissions
