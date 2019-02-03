# S3
- Object based storage, cannot run OS or DB on S3
- size up to 5TB
- files are stored in buckets
- bucket name is global resource
- URL scheme:
https://s3-<region>.amazonaws.com/<bucket_name>
- consistency model:
  - new object: read after write immediately
  - update / delete: eventual consistency
- tiers:
  - Standard: 99.99% availability, 11 9's durability across multiple devices in multiple facilities. Designed to sustain the loss of 2 facilities
  - S3 - IA: Infrequently accessed. Lower fee than standard, but charged a retrieval fee
  - S3 One Zone - IA: lower cost option for infrequently accessed data, in a single AZ
  - Glacier: Archiving, retrieval time 3 -5 hours
- S3 is a Key Value store, plus version id, meta data, access control lists
- Versioning:
  - stores all versions for the object
  - you pay for all versions
  - great backup tool
  - delete marker placed on file not actually deleting files
  - integrates with lifecycle rules and 2FA if somebody tried to delete
  - Cross Origin Replication requires versioning on source and destination
  - Lifecycle Managment can be used with versioning or without
  - applied to current or previous versions
  - transition to S3- IA after 30 days and / or Glacier after 60 days
- Transfer accelleration:
  - utilize CloudFront edge location which is written back to your bucket
- Static website hosting


# CloudFront
- edge location is a location where content will be cached
- Origin is the origin of all files that the CDN will distribute and can be
  - EC2 instance
  - S3 bucket
  - Elastic Load Balancer
  - Route 53
- Distribution is the name given to the CDN
  - can have multiple origins
  - Web Distribution for websites
  - RTMP Distribution for media streaming
- Edge locations are not read only. Will replicate to origin
- objects are cached for TTL
- caches can be invalidated at a cost


# Security
- by default all buckets are private
- Make buckets public by:
  - Bucket policies that apply to the entire bucket
  - Access Control Lists apply on a per object basis
- can setup access logs to S3 or another AWS account
- Encryption:
  - In transit achieved by SSL/TLS
  - At rest:
    - S3 Managed Keys - SSE-S3
      - each object encrypted with strong key that itself is encrypted with a master key that regularly is rotated. All managed by AWS for you using AES256
    - AWS Key Management Service, Managed Keys - SSE-KMS
      - similar, but additional benefits and costs
      - allows to have an audit trail for the use of the Keys
    - Server Side Encryption with customer provided key - SSE-C
      - customer provides the keys used for Encryption
    - Client side encryption
      - encrypted by client before upload

# Storage Gateway
- appliance installed into your datacenter that asynchronously backs up data to the cloud
- File Gateway
  - stores flat files directly to S3
- Volume Gateways:
  - block based storage
  - Stored Volumes: primary data in datacenter, backed up to S3
  - Cached Volumes: primary data in S3, recently accessed data stored locally
- Virtual Tape Library
  - backup using existing tape backup infrastructure to Glacier

# Snowball
- physical storage container
- standard
- nowball edge with compute capabilities
- snowmobile
- replace import / export


# Tips
- success: 200 - OK status
- enable multipart upload for faster speed
- read FAQ!
