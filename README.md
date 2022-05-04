# Central Microgateway Configuration

This repository holds all the shared configuration that is injected into every microgateway

## What does this repository contain

- Centrally managed configuration
- Centrally managed plugin builder & KrakenD docker images
  - These images should be used, not the 3rd party ones
- Configuration related to the supported:
  - Environments
  - Regions
  - Microgateways
    - Whenever you create a new microgateway please raise a PR to add your microgateway to the array
- Automated syncing mechanism to create PRs in your microgateway repository whenever the following get updated:
  - Plugins
  - Centrally managed configuration
  - Centrally managed docker images
- A number of github actions that carry out both
  - The automated syncing
  - Re-usable workflows that are intended to be used in microgateways

### Artifacts

| Name                                                         | Path                 | Description                                                                                              |
| ------------------------------------------------------------ | -------------------- | -------------------------------------------------------------------------------------------------------- |
| Microgateways                                                | `microgateways.json` | A list of all supported microgateways _(github repositories)_, when you                                  |
| create a new gateway make sure to submit a PR to update this |
| Regions                                                      | `regions.json`       | A list of regions we support configuring for                                                             |
| Environments                                                 | `environments.json`  | A list of environments we support configuring for                                                        |
| Builder image                                                | `Dockerfile.builder` | A golang based image kept in sync to be compatible with the production image. Used for building plugins. |
| KrakenD image                                                | `Dockerfile.krakend` | The kidsloop supported KrakenD image.                                                                    |

## Where else might things be located?


| Name                    | Repository                                                                         | Description                                                                                                            |
| ----------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| Production Docker Image | [Microgateway Template](https://github.com/KL-Engineering/microgateway-template)   | A production ready dockerfile _that can be customized if needed_ for a microgateway deployment                         |
| Validation Docker Image | [Microgateway Template](https://github.com/KL-Engineering/microgateway-template)   | A docker image that can automatically validate your multi-file krakend.json configuration - _intended to be run in ci_ |
| Helm Charts             | [Microgateway Base Helm](https://github.com/KL-Engineering/microgateway-base-helm) | The base helm charts for a microgateway deployment, please provide your own `values.yaml` file in your repository      |
