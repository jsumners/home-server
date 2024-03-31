#!/bin/bash

export API_CLIENT_CONFIG_FILE=/etc/udm-pro-api-client.yaml
/usr/local/bin/udm-pro-api-client device restart {{ u6_enterprise_mac }}