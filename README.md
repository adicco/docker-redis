# Custom redis Docker image

Super simple image that facilitates replica sets for the infrastructure at Aruna Ratanagiri.

In particular, is friendly towards dynamic IPs, and will use `dig` to refresh and announce the updated IP to the replica set (WIP)

### Usage

Set the environment variable `REDIS_REPLICA_MODE` to `replica` if you want to spin up a replica. Otherwise, master is assumed 

### Environment

	| Varable | Description | Mandatory |
| ----------- | ----------- | ---------- |
| REDIS_PASSWORD | Password to the redis instance | Yes
| REDIS_REPLICA_MODE | master/replica | No, `master` is default
| REDIS_PORT | Port on which the instance listens | No, `6379` is default
| REDIS_PUBLISHED_PORT | master/replica | No, `6379` is default
| REDIS_REPLICA_MASTER_IP | ip of the master | No, only relevant if a replica
| REDIS_REPLICA_MASTER_PORT | port of the master | No, only relevant if a replica. Defaults to 6379
