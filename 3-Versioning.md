# Versioning

- link to documentation: [https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectVersioning.html](Versioning)
- create bucket
- make public
- select 'properties'
- enable versioning
  - once versioning is enabled, it cannot be disabled, only suspended
- upload some file and make public
- upload new version of the file (note the changed version id)
  - the new version is not public anymore!
- deleting adds a 'delete' marker
- you can restore by deleting the delete marker
  - the previous permissions are remembered (publicly accessible)
- it is possible to set up 2FA for deleting objects

# Exam tips
- Versioning stores all versions of an object
- good backup tool
- once enabled, it cannot be disabled, only suspended
- integrates with lifecycle rules
- supports 2FA 
