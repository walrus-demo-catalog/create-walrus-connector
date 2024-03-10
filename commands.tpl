export WALRUS_URL=${WALRUS_URL}
export WALRUS_TOKEN=${WALRUS_TOKEN}
export ARCH=${ARCN}
export OS=${OS}
export K8S_CONNECTOR_NAME=${K8S_CONNECTOR_NAME}
export ENV_TYPE=${ENV_TYPE}
echo "${KUBECONFIG}" > kubeconfig.temp
awk '{printf "%s\\n", $0}' kubeconfig.temp > kubeconfig
(
printf "%s" 'walrus connector create -d --name ${K8S_CONNECTOR_NAME} --applicable-environment-type ${ENV_TYPE} --type Kubernetes --category Kubernetes --project="" --config-version v1 --config-data='"'"'{"kubeconfig":{"visible":false,"value":"'
cat kubeconfig
echo '","type":"string"}}'"'"''
) > create_walrus_connector.sh

wget -O /usr/local/bin/walrus --no-check-certificate "${WALRUS_URL}/cli?arch=${ARCN}&os=${OS}"
chmod +x /usr/local/bin/walrus
walrus login --insecure --server ${WALRUS_URL} --token ${WALRUS_TOKEN}
walrus version

/bin/sh create_walrus_connector.sh
