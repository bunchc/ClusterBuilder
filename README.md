# Cluster Builder

Cluster Builder is a Vagrant file that will build OpenCenter and 3 compute node VMs

## About

The Vagrant file is setup to do a few things:
- opencenter: Lives at 172.16.172.100, OpenCenter u/p: admin/password, This VM is configured with both the OpenCenter server and OpenCenter dashboard.
- node-(1-3): Nodes 1 - 3. Live at 171.16.172.10x where x is the node numbber. These VMs are basic precise64 boxes with the OpenCenter agent added.

## Requirements

This requires VirtualBox, Vagrant, and a Precise64 box. Also lots of RAM. An SSD is also useful