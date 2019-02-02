# Security

- by default all newly created buckets are private
- Several methods to control access to a buckets data:
  - Bucket policies apply to the entire bucket
  - Access Control List can be applied to a single object (one object public in an otherwise private bucket)
- S3 can be configured to create access logs to another bucket and even another AWS account

# Encryption
- 4 different methods of encryption
- 2 types: in transit and data at rest
- in transit using SSL/TLS
- at rest:
  - server side:
    - S3 Managed Keys - SSE-S3
      - AES256
      - fully managed by AWS
    - AWS Key Management Service - SSE-KMS
      - Provides you with an audit trail
      - option to create and manage keys yourself
    - Server Side Encryption with customer provided key - SSE-C
      - customer manages the keys
  - client side encryption:
    - client encrypts the data and then uploads it to S3
