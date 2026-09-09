#!/usr/bin/env bash
set -euo pipefail
DIR=$(cd "$(dirname "$0")/.." && pwd); U=${SUDO_USER:-$USER}
apt-get update; apt-get install -y python3 python3-venv python3-pip
cd "$DIR"; python3 -m venv .venv; .venv/bin/pip install -r requirements.txt
sed -e "s|__USER__|$U|g" -e "s|__DIR__|$DIR|g" deployment/evolution-erp-ducluu.service > /etc/systemd/system/evolution-erp-ducluu.service
systemctl daemon-reload; systemctl enable --now evolution-erp-ducluu
systemctl --no-pager status evolution-erp-ducluu || true
