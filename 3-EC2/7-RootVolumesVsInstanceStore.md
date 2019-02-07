# Difference between Instance Store and EBS

- you can select your AMI based on
  - Region
  - OS
  - Architecture
  - Launch Permissions
  - Storage
    - Instance Store (Ephemeral Storage)
    - EBS backed volumes
- EC2 instances with Instance Store cannot be stopped, only terminate or reboot
- when the instance get's 'faulty', the instance data will be lost, hence Ephemeral


# Tips
- All AMI's are either backed by EBS or backed by instance store
- For EBS volumes: the root device from the AMI is an EBS volume create from a snapshot
- For Instance Store Volumes: the root device for an instance store backed is created from a template stored in S3
- Instance Store is called Ephemeral, and cannot be stopped
- both can be reboot without losing data
