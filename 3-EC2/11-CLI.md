# AWS CLI
- Install AWS CLI
- create CLI user in IAM
  - enable programatic access
  - attach AdminAccess policy to the user
  - download CSV

- `aws configure` to enter the credentials from the CSV file

- Some examples:
  - `aws s3 ls` -> list all S3 buckets around the world
  - `aws s3 help` -> list available commands
  - `aws ec2 describe` -> get details of all available (incl. terminated) EC2 instances
  - `aws ec2 terminate-instances --instance-ids <instance_id>` -> terminate instance with ID <instance_id>
- credentials stored in ~/.aws/credentials
