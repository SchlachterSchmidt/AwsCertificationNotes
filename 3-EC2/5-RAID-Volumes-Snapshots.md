# RAID
- RAID stands for
  'Redundant Array Of Independent Disks'
- Several independent hard disks that present themselves to the OS as a single hard drive
- Different flavours:
  - RAID 0 ->
    - Striped (data is split evenly across the disks)
    - No redundancy
    - good performance
    - Adds the storage together. If one disk fails, you lose the entire disk array
  - Raid 1 ->
    - Mirrored
    - redundancy built in, if one one disk fails you can still use the array
  - RAID 5 ->
    - discouraged by AWS to use on EBS volumes
  - RAID 10 ->
    - combines RAID 1 with RAID 0
    - good performance plus redundancy

- You'd only really need to do this on AWS if you have maxed out an EBS volume but you are still not meeting your IO or storage needs


# Provision in AWS
- create windows server EC2 instance
- add 4 EBS volumes
- connect to running server using RDP
- Use disk management utility
  - delete mounted volumes
  - create new striped volume (RAID 0)
  - assign drive letter


# Creating a snapshot of a RAID array
- Problem: the snapshot excludes the data held in the cache by the application and the OS. This is fine on a single volume, but when using a RAID array, this can be problematic due to interdependencies
- Solution: take application consistent snapshot using one of these methods:
  - shut down the instance
  - unmount the raid array
  - freeze the file system
