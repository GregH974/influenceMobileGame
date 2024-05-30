#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid

# Install gems of project
# Needed on windows.
bundle install --jobs $(nproc)

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
