#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

# firewall
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https || true
sudo firewall-cmd --reload

# SELinux контексты для docker томов/конфигов
sudo chcon -Rt svirt_sandbox_file_t ./data || true
sudo chcon -Rt svirt_sandbox_file_t ./nginx || true

echo "Bootstrap done."
