# Central Microgateway Configuration

This repository holds all the shared configuration that is injected into every microgateway

1. Config folder structure syncing
    - Submit a PR on push to main
2. Do we handle plugin syncing through this repository?

## Artifacts

| Name             | Path                 | Description                                                                                              |
| ---------------- | -------------------- | -------------------------------------------------------------------------------------------------------- |
| Production image | `Dockerfile`         | Production ready docker image                                                                            |
| Builder image    | `Dockerfile.builder` | A golang based image kept in sync to be compatible with the production image. Used for building plugins. |
| KrakenD image    | `Dockerfile.krakend` | The kidsloop supported KrakenD image.                                                                    |