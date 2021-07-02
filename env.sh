PREFIX=ibm
COMMON_NAME=*.appdomain.cloud
SAN_DNS="DNS:*.sampleingress.eu-gb.containers.appdomain.cloud,DNS:*.sampleingress.eu-gb.containers.appdomain.cloud"

ORGANISATION=IBM
COUNTRY=GB
LOCALITY=London
STATE=London

SOAP_SERVER_JKS_PATH=${DEPLOYMENT_ROOT}/certs/ibm-soap-server.jks
CA_JKS_PATH=${DEPLOYMENT_ROOT}/certs/ibm-ca.jks