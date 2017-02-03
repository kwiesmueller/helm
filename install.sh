#!/usr/bin/env bash

# usage: ./install.sh name chart_name

source "./set-cluster.sh"
if [ -n "$1" ]; then

    if [ -n "${HELM_CURRENT_CLUSTER}" ]; then
        echo "using cluster ${HELM_CURRENT_CLUSTER}"
        current=${HELM_CURRENT_CLUSTER}
    else
        echo "no cluster set"
        exit 1
    fi

    if [ -n "$3" ]; then
        helm install -n $1 charts/$2/ --namespace $3 -f values/${current}/$2/values.yaml
    else
        helm install -n $1 charts/$2/ -f values/${current}/$2/values.yaml
    fi
else
    echo "usage: ./install.sh name chart_name"
    exit 1
fi