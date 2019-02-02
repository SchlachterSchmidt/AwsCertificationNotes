# Versioning Lab

- create a 2nd bucket in another region with default settings
- go to management -> replication
- replication can work on prefix (like folder), tags, or entire buckets
- Versioning needs to be turned on on both buckets
- new objects and changed objects will be replicated
- existing objects are not replicated

- use AWS CLI to copy files from source to dest bucket:

`aws s3 cp --recursive s3://<source> s3://<dest>`

- files deleted in the source bucket will not be automatically deleted in the destination bucket as well (think backups)
- this includes files as well as specific versions

# Tips
- versioning must be enabled on both buckets
- regions must be unique
- existing files must be copied manually
- all subsequent updates will be replicated
- delete markers are not replicated
- deleting individual files or versions of a file will not be replicated
- you cannot replicate to multiple buckets
