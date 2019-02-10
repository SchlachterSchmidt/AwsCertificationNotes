# Bootstrap Scripts
- script that is being run when the instance is first created
  - use to udpate system, install applications etc

- create simple html file and upload to a bucket
- create S3 Admin Access Ec2 role
- provide your script when launching a new EC2 instance on Configure Instance Details screen under Advanced Details
  - eg.
  ```
  #!/bin/bash
  yum update -y
  ```
- ssh into this instance
- run yum update -> no updates are available because the update was performed during bootstrap
- build out the shell script to turn the EC2 instance into an apache web server by adding to text file:
  ```
  #!/bin/bash
  yum update -y
  yum install httpd -y
  service httpd start
  chckconfig httpd on
  aws s3 cp s3://<BUCKETNAME>/index.html /var/www/html --region <REGION>
  ```
