#!/usr/bin/env bash
set -euxo pipefail

if cargo nextest list --all-features 2>/dev/null | grep -q .; then
  echo "Running tests..."
  cargo nextest run --all-features
else
  echo "No tests found, skipping."
fi
