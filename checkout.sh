#!/bin/sh

URL=${PLUGIN_URL:-$URL}
VERSION=${PLUGIN_VERSION:-"HEAD"}
OURPUT_PATH=${PLUGIN_OUTPUT_PATH:-$DRONE_WORKSPACE}
USERNAME=${PLUGIN_USERNAME:-$USERNAME}
PASSWORD=${PLUGIN_PASSWORD:-$PASSWORD}

svn checkout ${URL} ${OURPUT_PATH} \
    --revision ${VERSION} \
    --username ${USERNAME} \
    --password ${PASSWORD} \
    --no-auth-cache \
    --non-interactive \
    --trust-server-cert-failures=unknown-ca,cn-mismatch,expired,not-yet-valid,other
