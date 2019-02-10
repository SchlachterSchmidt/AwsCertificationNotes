# EC2 Instance Metadata
- you can access instance metadata from the CLI inside your EC2 instance
- `curl http://169.254.169.254/latest/meta-data/` will return a list of endpoints you can query for metadata, eg:
  - public-ipv4
  - security-groups
  - instance-id
  - instance-type
