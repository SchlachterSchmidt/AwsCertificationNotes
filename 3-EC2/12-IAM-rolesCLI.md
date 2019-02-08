# IAM access with the CLI
- using credentials can be a security risk: if somebody would be able to get a hold of your credentials, they would be able to provisions instances on your account
- it is necessary though if you connect to the AWS ecosystem from the outside world


# Role management
- create AWS service IAM role for EC2
- for the example, select S3 full access and name it
  - all roles are global!
- launch a new EC2 instance with the created IAM role
  - it is now possible to change the IAM role on an EC2 instance from the Actions -> Instance Settings menu. Exam might not be updated to reflect this
- ssh into the instance
- use the AWS cli without having to install credentials
- the .aws directory does not exist
- if we run `aws configure` we can leave out the credentials, and only set the default region
