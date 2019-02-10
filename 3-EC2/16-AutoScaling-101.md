# Autoscaling

## before the lecture:
  - create index.html and healthcheck.html file
  - upload files to S3 bucket
  - create a ELB that pings healthcheck.html with low thresholds

## Launch Configuration
- go to Launch Configuration under AutoScaling
- essentially the same menu as launching a standard EC2 instance
  - create autoscaling group with S3 admin role
  - add bootstrap script
- finish remaining settings and click Create Launch Configuration
- the next screen will go straigght to Create AutoScaling Group

## AutoScaling Group
- create autoscaling Group
- start with 2 instances
- if you enter a subnet, the instances created for the AG will all be in the that AZ. For high resiliance, add all available AZ's
  - AWS will automatically distribute the EC2 instances across the available AZs
- in Advanced, register the AG with the ELB
- Set the health check to be performed by the load balancer
  - grace period is the time until the first health check is performed
- select to use scaling policies
  - select metric to use to determine scaling policy
- review and launch, wait for instances to come online
- check your scaling group to see instances
- check your load balancer to see instance health
- terminate one of the instances
  - another instance is brought up automatically
- when you delete the AG, it will also termnate any associated instances
