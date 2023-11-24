#!/bin/bash

# Gets Github Token and Credentials
source env.sh

# Publish Templates
devcontainer templates publish -r ghcr.io -n juancsucoder/flatboat-templates/roboten_ws_iron_nogpu ./container-based/dev/iron/iron_nogpu