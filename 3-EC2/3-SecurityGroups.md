# Security Groups

- Essentially a firewall that locks down or opens up ports on your virtual instances
- changes to the security group rules apply immediately
- deleting the default outbound rule does not block outbound traffic. Rather, anything that is allowed in will also be allowed outbound
- everything is blocked by default, you can only allow traffic, not block it
- you can associate multiple security groups with an instance by going to Actions -> Networking -> Change Security Groups


# Default VPC security Group
- the default VPC security group allows instances with the same security group to communicate with each other
- Source is the SG-ID


# Exam tips
- all inbound traffic is blocked by default
- all outbound traffic is allowed by default
- changes are immediate
- any number of instances in a security group
- any number of rules on an instance
- Security groups are stateful
  - if you allow traffic in, the same traffic is allowed out
- you cannot block specific IP addresses using security groups, use Network Access Control Lists instead
