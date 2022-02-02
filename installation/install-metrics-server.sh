#!/bin/ash
set -eu pipefail
#https://artifacthub.io/packages/helm/metrics-server/metrics-server

#kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/
helm upgrade --install metrics-server metrics-server/metrics-server

echo "need to update resources"
#memo
# https://github.com/kubernetes-sigs/metrics-server/issues/131
# https://github.com/kubernetes-sigs/metrics-server/issues/131#issuecomment-681927802
