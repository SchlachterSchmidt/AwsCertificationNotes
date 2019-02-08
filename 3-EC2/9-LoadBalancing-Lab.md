# Load Balancing Lab

## Classic Load Balancer
- create EC2 instance with Apache running and 2 simple html pages
- ssh into instance
- navigate to Load Balancer, create new Classic Load Balancer
- Assign name,  security group, and listening ports
- Configure health check
  - for demo, make timeout 2 seconds, every 5 seconds, unhealthy status after 2 failues, healthy after 3 successes
- Add EC2 instance
- Launch

- On the ELB page, take note of the new DNS name, and wait until the instance state is InService
- in SSH terminal, remove the healthcheck page
- on ELB page, notice that the instance status is changed to OutOfService
- browse to the public DNS name, which will display the index.html page
  - the ELB of course has a public IP address, but you will only ever use the DNS name, unlike with EC2 instances, where you can use the IP address directly

## Application Load Balancer
- create new Application Load Balancer
- Configure listener protocols
- add availability zones available to you
- Configure security settings and security groups
- create routing:
  - create a new Target Group, set protocol and port, as well as health check settings
  - configure success codes
- Register the target EC2 instances
- Again, use the DNS name to make request against web server


# Tips
- 3 types of LBs:
  - Application
  - Network
  - Classic ELB
- 504 means LB is online, but cannot reach instances
  - trouble shoot web server to resolve
- client IP address is forwarded in the X-forwarded-For header
- Instances monitored are
  - InService
  - OutOfService
- Health check poll the instance on a specific endpoint
- LB's have DNS name, you are never given an IP address
- 
