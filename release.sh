#!/bin/bash

# Gets Github Token and Credentials
source env.sh

# env.sh should contain (classic token):
# export GITHUB_TOKEN="ghp_token..."

# Publish Devcontainer Templates
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates ./ws/iron/iron_nogpu
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates ./ws/humble/humble_nogpu
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates ./ws/noetic/noetic_nogpu

# Before running is required to run `oras login ghcr.io` with GitHub user and classic token as password

# Publish Package Templates
oras push ghcr.io/juancsucoder/flatboat-templates/robot_pkg_humble_nogpu:latest --artifact-type application/coder.juancsu.flatboat.pkg ./pkg/humble/humble_nogpu/* 
