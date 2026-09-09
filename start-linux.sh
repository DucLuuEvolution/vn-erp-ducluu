#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
[ -d .venv ] || python3 -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
exec uvicorn api.main:app --host 0.0.0.0 --port "${PORT:-3000}"
