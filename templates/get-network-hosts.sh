#!/bin/bash

export API_CLIENT_CONFIG_FILE=/etc/udm-pro-api-client.yaml
/usr/local/bin/udm-pro-api-client > /opt/hosts.d/udm-pro
