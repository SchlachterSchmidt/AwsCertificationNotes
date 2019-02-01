# Create S3 bucket

- S3 is global (unlike most other AWS services)
- bucket name must be DNS compliant
- bucket name must be unique globally
- block public access
- Create
- Set properties and permissions
  - access can be regulated on a bucket using Bucket Policy and object basis using Access Control List

- upload object and set access permissions,  storage tier, encryption options


# Making objects public
- objects are reachable by a URL in theory but have to be made public
1. make the bucket publicly accessible in 'Edit public access settings' (uncheck 4 boxes and confirm). Now, objects in the bucket can be made public
2. update the object to make it publicly accessible in Actions -> make public

# Exam tips
- bucket names must be unique globally
- success indicated by 200 OK
- 3 types of storage
  - standart
  - IA
  - IA - reduced redundancy
- Encryption
  - client side Encryption
  - server side Encryption
    - with AWS S3 managed key
    - with KMS
    - customer provided key
- control access to a bucket using ACL and Bucket Policy
- buckets and objects are private by default
