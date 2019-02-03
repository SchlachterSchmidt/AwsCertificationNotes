# Storage Gateway

- A service that connects an on-premise application to AWS cloud based storage
- virtual appliance installed into a VM in your datacenter
- asynchronously replicates data to S3 / Glacier
- install VM image on host in your datacenter (VMware ESXi or MS Hyper-V) and associate with AWS account
- four types:
  - Flie Gateway
    - uses NFS
    - brand new
    - store flat files in S3 like word files, pictures etc
  - Volume Gateway
    - uses iSCSI
    - block based storage like a virtual hard disk
    - two types:
      - stored volumes
      - cached volumes
  - tape Gateway
    - VTL
    - archiving solution


# File Gateway
- files are stored in S3 as objects and accessed through a Network File System (NFS) mount point
- Ownership, permissions and timestamps are stored as metadata
- once stored in S3, versioning, lifecycle management and replication can be applied
- can use the internet, direct connect or Amazon VPC


# Volume Gateway
- interface that presents your applications with block basaed disk volumes using the iSCSI protocol
- you can OS, apps, DB on the volume. It is like a virtual hard disk
- snapshots of this data can be backed up into the cloud asynchronously
- backup is the delta and compressed to minimize charges
- Two types:
  - Stored Volumes:
    - store your primary data locally, and asynchronously backing up to the could
    - low latency access to your dataset while providing duarble off-site backups
    - create storage volumes and mount them to your servers. Data written to the volumes is stored on site and backed up to S3 automatically in the form of Elastic Block Storage  (EBS) snapshots.
    - 1 GB to 16 TB in size
  - Cached Volumes:
    - uses S3 as primary storage while retaining frequently accessed data locally in the storage gateway
    - minimize need for on site infrastructure, while providing low latency access to frequently accessed files
    - up to 32 TB in size as iSCSI device
    - Data written to this device is stored on S3, but retains recently read data on premise


# Tape Gateway
- durable, cost effective
- uses your existing tape based backup application infrastrucutre to store data on virtual tapes on the tape gateway


# Tips
- File Gateway -> flat files stored on S3
- Volume Gateway -> block Storage
  - Stored Volumes: primary data on site and backed up to S3
  - Cached Volumes: primary data in S3 and frequently accessed data cached locally
- Tape Gateway -> backup 
