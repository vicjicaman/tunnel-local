#!/bin/bash

export LOCAL_TARGET_SERVER_HOST=$2
export LOCAL_DEVICE_ID=$1

export LOCAL_TARGET_SERVER_PORT=25000
export LOCAL_WORKSPACE=./

export LOCAL_VERSION_BOOTSTRAP=1.70.17-initial-client-prod #module @nebulario/tunnel-local-boot-graph
export LOCAL_VERSION_GRAPH=1.70.10-initial-client-prod #module repoflow/tunnel-local-graph-container
export LOCAL_VERSION_WEB=1.70.7-initial-client-prod #module repoflow/tunnel-local-web-container
export LOCAL_VERSION_WORKER=1.70.4-initial-client-prod #module repoflow/tunnel-local-worker-graph-container

echo "Starting..."
echo "{\"dependencies\":{\"@nebulario/tunnel-local-boot-graph\":\"${LOCAL_VERSION_BOOTSTRAP}\"}}" > package.json
npm install --production=true
node node_modules/@nebulario/tunnel-local-boot-graph/dist/index.js
