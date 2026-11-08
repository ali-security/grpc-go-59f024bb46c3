#!/bin/bash

set -e
# Run from this script's directory: the relative paths below assume it, and
# CI invokes the script from the repository root.
cd "$(dirname "$0")"
mkdir -p binaries
go build -o ./binaries/client ../../../../interop/xds/client/
go build -o ./binaries/server ../../../../interop/xds/server/
go test . -v
