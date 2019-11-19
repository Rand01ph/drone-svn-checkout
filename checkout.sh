#!/bin/sh

URL=${PLUGIN_URL:-$URL}
OURPUT_PATH=${PLUGIN_OUTPUT_PATH:-$DRONE_WORKSPACE}
USERNAME=${PLUGIN_USERNAME:-$USERNAME}
PASSWORD=${PLUGIN_PASSWORD:-$PASSWORD}

svn checkout ${URL} ${OURPUT_PATH} \
    --username ${USERNAME} \
    --password ${PASSWORD} \
    --no-auth-cache \
    --non-interactive
