# EC2 Placement Groups
- two types:
  - Clustered PG
  - Spread PG
- Exam is typically about clustered PGs, as they are the oldest one

## Clustered Placement Groups
- A clustered PG is a grouping of instances within a single AZ.
- Recommended for applications that need low network latency, hight throughput (eg. Big Data)
- only certain isntances can be launched into clustered PG

## Spread Placement Groups
- Spread PG is a group where the instances are placed on distinct underlying hardware
- recommended for applications that have a small number of critical instances


## Exam
- Clustered PG cannot spread multiple AZs, spread PG can
- If the term Placement Group is not qualified, think clustered PG, since spread PGs were only launched very recently
- only certain types of instances can be launced into a PG, they should be homogenous
- cannot be merged
- existing instances cannot be moved into PGs
