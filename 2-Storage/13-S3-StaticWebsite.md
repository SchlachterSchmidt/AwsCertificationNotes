# Static Website on S3
- can't be using things like PHP
- only plain old HTML
- no need to manage infra, just make bucket and documents public and enable Static Website Hosting
- select index and error pages
- hosted website URL scheme is:
<bucket_name>.s3-website-<region>.amazonaws.com


# Exam tips
- use bucket policy to make entire buckets public
- can host static websites, or websites that need a DB
- S3 scales automatically
