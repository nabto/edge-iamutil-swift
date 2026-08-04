#!/bin/bash

set -e

trap 'kill $(jobs -p)' EXIT

# macOS only (Swift test suite)
TCPTUNNEL_EXE="./tcp_tunnel_device_macos"
SIMPLE_MDNS_DEVICE_EXE="./simple_mdns_device_macos"

function run {
    local config=$1
    shift
    local opts=$*
    ${TCPTUNNEL_EXE} -H ./config/$config --random-ports $opts 2>&1 > /tmp/tunnel-$config
}

#find ./config -type d -name state -exec git checkout {} \; || true

run localPairLocalOpen &
run localPairLocalInitial &
run localPairPasswordOpen &
run localPasswordPairingDisabledConfig &
run localPasswordInvite &
run localAllowAllIam --log-level trace &

# Keep stdin open so the mDNS device stays discoverable in non-interactive/CI
# runs; it otherwise stops immediately on stdin EOF ("press enter to stop").
tail -f /dev/null | ${SIMPLE_MDNS_DEVICE_EXE} pr-mdns de-mdns swift-test-subtype swift-txt-key swift-txt-val &

wait
