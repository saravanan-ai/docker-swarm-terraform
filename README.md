# docker-swarm-terraform
We use terraform to create the master and worker machines which to be part of docker swarm

This repository while perform the below steps:

Docker swarm high availability:

Docker swarm uses the Raft Consensus Algorithm to manage the global cluster state, Raft makes sure that all the manager nodes in the cluster who manage and schedule tasks are storing the same consistent state.

Raft tolerates up to “(N-1) / 2" failures and requires a majority of manager nodes to agree on values proposed to the cluster, which translates to “(N/2) + 1” manager nodes.

We will be implementing this for AWS.

Master nodes:

Master -1
Master -2
Master -3

Worker Nodes:

Worker -1
Worker -2

We will be creating the nodes and installing the docker and docker compose in those machines using docker_compose.sh

Output file is used to capture the public IPs of the machines created.

We have used the 3 different subnets to isolate the machines from each other.

Here we will not complicate with modules,use it plain . !!!