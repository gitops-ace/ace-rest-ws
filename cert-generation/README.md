# Creating the keys, certficates and stores

## Pre-requisite

Make sure `COMMON_NAME`, `SAN_DNS`, `ORGANISATION`, `COUNTRY`, `LOCALITY` and
`STATE` variables in [env.sh](../env.sh).

Use wildcard subdomain for both `COMMON_NAME` and `SAN_DNS`. Note that `COMMON_NAME` should be less than or equal to 64 characters. For longer domains, make use of `SAN_DNS`, in addition to `COMMON_NAME`. 

For example:

```
COMMON_NAME=*.eu-gb.containers.appdomain.cloud
SAN_DNS=*.thisiswaytoolongasdomainthatIneedtousethis.eu-gb.containers.appdomain.cloud
```

## Steps

```
client-deployment
└── cert-generation <- includes scirpt to generate keys/certs/stores
    ├── README.md <--- this file
    ├── docker
    │   ├── Dockerfile
    │   └── src
    │       ├── Makefile
    │       └── san.ext
    └── generate.sh
...
```

Change to [cert-generation](.) directory.

Run the shell script, [generate.sh](./generate.sh), with

```
./generate.sh
```

or 

```
bash generate.sh
```

The script will run a docker container to create the necessary keys, certifcates and stores, in `certs` directory at root of the installation folder. Note that `PREFIX` from 
[env.sh](../env.sh) will be used in prefixing the name of the files.

