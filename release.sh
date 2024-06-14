#!/bin/bash

# Gets Github Token and Credentials
source env.sh

# env.sh should contain (classic token):
# export GITHUB_TOKEN="ghp_token..."

# Publish Templates
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates ./ws/iron/iron_nogpu
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates ./ws/humble/humble_nogpu
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates ./ws/noetic/noetic_nogpu
