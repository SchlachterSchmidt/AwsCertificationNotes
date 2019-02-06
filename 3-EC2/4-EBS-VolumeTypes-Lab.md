# EBS Volume types - Lab

- Launch new EC2 instance
- attach 4 disk types:
  - root (SSD)
  - magnetic
  - cold HDD
  - throughput optimized
- the root device will be the only one based off a snapshot
- by default, only the root device will be terminated upon shutdown

- you can upgrade the storage type and volume size live
- you cannot upgrade magnetic type volumes (note: this seems to be false)
- you can migrate a volume between AZ's by:
  - taking a snapshot of the volume
  - navigating to Snapshots
  - Actions -> Create Volume -> change AZ
- you can copy the snapshot to another region
- you can create an image from a snapshot, making it possible to boot into it. The image will show in AMI's. Launch process is same as creating a regular EC2 instance

# Exam tips
- volumes are basically virtual hard disks
- volumes will be in the same AZ as your EC2 instance
- snapshots are stored on S3, but you will never see them there
- it is not possible to mount a volume from one AZ to an EC2 instance in another AZ
- snapshots are point in time copies of volumes
- snapshots are incremental -> only the delta is stored
- migrate a volume to another AZ: create snapshot and create volume in another AZ from it
- migrate volume to another region: create snapshot and copy to target region
- create AMI of snapshot
- you can increase volume size on the fly
- snapshots of volumes are encrypted automatically
- volumes restored from encrypted snapshots are also encrypted
- you can share snapshots with other people only if they are not encrypted
