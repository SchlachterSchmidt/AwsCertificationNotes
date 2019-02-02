# CloudFront Content Delivery Network

- CDN is a network of distributed servers that deliver content to a user based on the location of the user
- Terminology:
  - edge location is the location where content will be cashed.
  - Origin is the origin of the file that the CDN will distribute. This can be an EC2 instance S3 bucket, Elastic Load Balancer or Route53 (most common S3 or EC2)
  - distribution: name given to the CDN consisting of a network of edge locations
- first user from around the world make a request to retrieve content
- this request is routed first to the nearest edge location
- checked whether file is cached at the edge location
- edge location pulls the file from the origin and caches until TTL
- no faster delivery for the first user
- for the rest of the users, the file can be retrieved from the edge location

- CloudFront can be used to deliver content this
- works best with AWS, but can be used with non-AWS origin as well

# Tips
- edge location is where data is cached until TTL
  - you can invalidate caches manually for a fee
  - you can also write to an edge location
  - it will be replicated back to the Origin
- origin of the data is called Origin and can be S3 bucket, EC2 instance or non AWS service
- Distribution is the name given to the CDN and has two types:
  - Web distribution: used for websites
  - RTMP: used for media streaming
