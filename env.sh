PREFIX=ibm
COMMON_NAME=*.au-syd.containers.appdomain.cloud
SAN_DNS="DNS:*.au-syd.containers.appdomain.cloud"

ORGANISATION=IBM
COUNTRY=AU
LOCALITY=Melbourne
STATE=Victoria

SOAP_SERVER_JKS_PATH=${DEPLOYMENT_ROOT}/certs/ibm-soap-server.jks
CA_JKS_PATH=${DEPLOYMENT_ROOT}/certs/ibm-ca.jks