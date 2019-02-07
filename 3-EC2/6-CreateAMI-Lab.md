# Creating a new AMI

- Take a snapshot of a stopped EC2 instance volume
- Note that it is not possible to encrypt it in the menu
- Copy the snapshot to another region
  - you will see the option to encrypt the snapshot
  - If change your region, you can see the encrypted snapshot
- Create an AMI from the encrypted snapshot
- You can boot an EC2 instance from this AMI with an encrypted root volume
- deregister the AMI afterwards


# Exam Tips
- shut down EC2 instance before taking a snapshot to ensure a consistent state
- snapshots of encrypted volumes are encrypted automatically
- volumes restored from encrypted snapshots are also encrypted
- you can only share unencrypted snapshots
