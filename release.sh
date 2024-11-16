#!/bin/bash

# Gets Github Token and Credentials
source env.sh

# env.sh should contain (classic token):
# export GITHUB_TOKEN=ghp_token...
# export GITHUB_USR=GHUsername

# Publish Devcontainer Templates
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates ./ws/iron/iron_nogpu
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates ./ws/humble/humble_nogpu
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates ./ws/noetic/noetic_nogpu

# Before running is required to run `oras login ghcr.io` with GitHub user and classic token as password

# Publish Package Templates
wsdir=$(pwd)
version="1.2.1"

# Oras Login
oras login ghcr.io -u $GITHUB_USR -p $GITHUB_TOKEN

cd ./pkg/humble/humble_nogpu/
oras push ghcr.io/juancsucoder/flatboat-templates/robot_pkg_humble_nogpu:latest --artifact-type application/coder.juancsu.flatboat.pkg *
oras push ghcr.io/juancsucoder/flatboat-templates/robot_pkg_humble_nogpu:$version --artifact-type application/coder.juancsu.flatboat.pkg * 
cd "$wsdir"

# Pull command: `oras pull ghcr.io/juancsucoder/flatboat-templates/robot_pkg_humble_nogpu:latest`

# Publish Workload Templates

cd ./wl/humble/
oras push ghcr.io/juancsucoder/flatboat-templates/robot_wl_humble:latest --artifact-type application/coder.juancsu.flatboat.wl *
oras push ghcr.io/juancsucoder/flatboat-templates/robot_wl_humble:$version --artifact-type application/coder.juancsu.flatboat.wl *
cd $wsdir
