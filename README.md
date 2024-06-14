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

## License

> Copyright 2024 Juan Camilo Sánchez Urrego @JuanCSUCoder <juancsucoder@gmail.com>
>
> Licensed under the Apache License, Version 2.0 (the "License");
> you may not use this file except in compliance with the License.
> You may obtain a copy of the License at:
>
> <http://www.apache.org/licenses/LICENSE-2.0>
>
> Unless required by applicable law or agreed to in writing, software
> distributed under the License is distributed on an "AS IS" BASIS,
> WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
> See the License for the specific language governing permissions and
> limitations under the License.
