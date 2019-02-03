# Launch an EC2 instance
- Select EC2 in console -> Launch instance
- Pick Amazon Machine Image (AMI), OS
- pick instance type
- configure instance details:
  - number of instance
  - spot instance or not
  - Network, VPC, Subnet (equals AZ), IP address
  - IAM role
  - shutdown behaviour -> stopped or killed
  - termination protection
  - CloudWatch Detailed monitoring
  - Bootstrap script
- Add storage:
  - any of the bootable types for root
  - add additional devices of any of the other types
  - delete on termination setting controls whether the volume is deleted along with the EC2 instance
- add tags
- configure security group
  - essentially a firewall
  - allow access on specific ports from different sources
  - review and launch
  - select key pair to use for authentication
- note the public IP address to ssh

- System status check verifies that the instance is reachable
- Instance status check check if the instance is healthy
- Monitoring is enabled by default every 5 minute


# Reserved Instances
- Under Instances in the menu you can select Reserved Instances and modify the terms


# Encrypted Root Volumes
- the root device volume cannot be encrypted when first creating the Volume by defualt


# Summary
- provision EC@ Instance
- termination protection turned off by default
- EBS volume is deleted by default if the instance is terminated
- Root volumes are not encryptable by default for Amazon AMI's
- Additional volumes can be encrypted
- Security groups are essentially a Firewal
-
-
