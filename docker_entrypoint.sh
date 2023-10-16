#!/bin/bash

set -ea

echo "Starting Actual Server..."
exec /sbin/tini -g -- node app.js