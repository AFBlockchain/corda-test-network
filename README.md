# Corda Test Network

The compose configuration will bootstrap a test corda network with 1 Notary and 3 nodes. The total four nodes share a single network map and a shared set of Cordapps. On each start up, each node will run database migration for both core and app schemas, which may slow the start up time.

## Database

Currently, nodes are using H2.

There will be a configuration for using external database in the future.

## Networking

The peer-to-peer communication happens within the internal Docker network. The SSH and RPC ports are exposed from `10003-10006` and `10007-10010` separately.
