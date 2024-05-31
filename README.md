# FlatBoat Templates

## Folder Structure

```bash
├──  container-based
│  ├──  dev
│  ├──  nodes
│  └──  prod
├──  LICENSE
├──  README.md
└──  workloads
```

## Naming Convention

```syntax
<registry-domain>/<namespace>/roboten_<ws|pkg|bot|wl>_<distro>
```

## How to publish

1. Create a file named `env.sh` on the root of this repository
2. Write the `GITHUB_TOKEN` environment variable with: `export GITHUB_TOKEN="token"`
3. Run `release.sh`
