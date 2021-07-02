# Creating the keys, certficates and stores

## Pre-requisite

Make sure `COMMON_NAME`, `SAN_DNS`, `ORGANISATION`, `COUNTRY`, `LOCALITY` and
`STATE` variables in [env.sh](../env.sh).

Use wildcard subdomain for both `COMMON_NAME` and `SAN_DNS`. Note that `COMMON_NAME` should be less than or equal to 64 characters. For longer domains, make use of `SAN_DNS`, in addition to `COMMON_NAME`. 

For example:

```
COMMON_NAME=*.appdomain.cloud
SAN_DNS="DNS:*.sampleingress.eu-gb.containers.appdomain.cloud,DNS:*.sampleingress.eu-gb.containers.appdomain.cloud"
```

As above shows, you can put a set of hostnames as the `SAN_DNS`. 

## Steps

```
ace-rest-ws
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

The script will run a docker container to create the necessary keys, certifcates and stores, in `certs` directory at root of the installation folder:


```
ace-rest-ws
├── cert-generation
│   ├── README.md 
│   ├── docker
│   │   ├── Dockerfile
│   │   └── src
│   │       ├── Makefile
│   │       └── san.ext
│   └── generate.sh
└── certs <--- directory where certs/keys are generat
    ├── ibm-ace-server.crt
    ├── ibm-ace-server.jks
    ├── ibm-ace-server.key
    ├── ibm-ca.crt
    ├── ibm-ca.jks
    ├── ibm-ca.key
    ├── ibm-ca.srl
    ├── ibm-client.crt
    ├── ibm-client.jks
    ├── ibm-client.key
    └── ibm-soap-server.jks
...
```

 Note that `PREFIX` from [env.sh](../env.sh) will be used in prefixing the name of the files.
