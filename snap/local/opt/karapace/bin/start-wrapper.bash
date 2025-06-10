#!/bin/bash

set -e

"${SNAP}"/usr/bin/setpriv \
    --clear-groups \
    --reuid snap_daemon \
    --regid snap_daemon -- \
    bash -c "\"${SNAP}/bin/karapace\" \"${SNAP_DATA}\"/etc/karapace/karapace.config.json >> \"${SNAP_COMMON}/var/log/karapace/output.log\""
