# Root Account
- The AWS account is first created as root account
- you should not sing into the root account, but rather create users and groups and secure the root account with 2FA
- IAM is on a global basis, not on a per region basis


# Create IAM users
- set user name
- set access type (for console and / or programatic access using API / CLI / SDK etc.)
- auto generate password and force reset on first sign in
- add to a newly created group with admin policy
- download CSV

# Update password policy
- Update the IAM password policy to force complexity
- Also possible to disable regions that are not going to be used

# Roles
- create role
- assign to EC2
- set the AmazonS3FullAccess permission
- this will allow any created EC2 instance with this role to manage S3 content

# Takeaway points
- IAM is universal
- root account is the account that is first created
- new users have no permissions and can be managed with groups and permissions
- new users can be assigned an access key id and secret access key to access the CLI. They are different from the username & password. Only visible once
- set up 2FA on root account
- create and customize password policy
