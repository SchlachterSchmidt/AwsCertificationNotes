# Create CloudFront CDN

- create test s3 bucket in a different region and upload some large image file. Make public
- Head to CloudFront service and create new Distribution
- Select Web. RTMP is used for media streaming

- Origin is the conent origin. S3 bucket in this example
  - Distributions can have several origins that are distinguisable by the origin id.
  - 'path' would be a folder in S3
- restrict bucket access: all requests must go through CloudFront
- set allowed http protocol and methods
- set TTL
- restrict viewer access settings allow to deliver paid for content to eligible users. Use with signed URL or signed cookie
- select price class
- AWS Web Application Frontend is very new, not on exam yet
- CNAME is a DNS url entry for the not userfriendly CDN URL
- enable or disable logging to S3
- finish

- the domain name is <random_string>.cloudfront.net/<s3_object>

- you can restrict CDN by geolocation using blacklist or whitelist and invalidate caches
