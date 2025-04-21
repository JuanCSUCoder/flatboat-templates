export GITHUB_TOKEN=ghp_token
export GITHUB_USR=Username

echo $GITHUB_TOKEN | oras login ghcr.io -u $GITHUB_USR --password-stdin
