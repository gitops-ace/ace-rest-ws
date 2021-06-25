SOAPSERVER_NAMESPACE=soapserver
PREFIX=ibm
COMMON_NAME=*.eu-gb.containers.appdomain.cloud
SAN_DNS=*.ace-prod-ref-6ccd7f378ae819553d37d5f2ee142bd6-0000.us-east.containers.appdomain.cloud

ORGANISATION=IBM
COUNTRY=GB
LOCALITY=London
STATE=London

SOAP_SERVER_JKS_PATH=${DEPLOYMENT_ROOT}/certs/ibm-soap-server.jks
CA_JKS_PATH=${DEPLOYMENT_ROOT}/certs/ibm-ca.jks