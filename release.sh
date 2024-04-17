#!/bin/bash

# Gets Github Token and Credentials
source env.sh

# Publish Templates
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates ./container-based/dev/iron/iron_nogpu
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates ./container-based/dev/humble/humble_nogpu
