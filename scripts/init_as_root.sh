#!/bin/bash
#
# This script needs to be compiled with shc enabling the suid bit, so we have
# privileges to operate as root.
#
# /init: s6-overlay

set -eu

# This can probably be improved:
# https://github.com/just-containers/s6-overlay/issues/394#issuecomment-1690769622
if [[ "${SSHD_ENABLED:-false}" == true ]]; then
    mv -f /etc/optional-services.d/sshd /etc/services.d/sshd
fi

exec -- /init "$@"
