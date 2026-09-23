#!/bin/sh
set -eu

# Railway exposes the service port in PORT.
# Sanaei 3X-UI supports XUI_PORT as a runtime override.
export XUI_PORT="${PORT:-10000}"

# Railway containers do not provide the host iptables capabilities
# normally used by Fail2ban.
export XUI_ENABLE_FAIL2BAN="${XUI_ENABLE_FAIL2BAN:-false}"

exec /app/DockerEntrypoint.sh
