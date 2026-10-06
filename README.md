# Kashif Khan's Home Assistant apps

Third-party Home Assistant app repository, based on
[home-assistant/apps-example](https://github.com/home-assistant/apps-example).

Apps documentation: <https://developers.home-assistant.io/docs/apps>

[![Open your Home Assistant instance and show the app store with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_store.svg)](https://my.home-assistant.io/redirect/supervisor_store/?repository_url=https%3A%2F%2Fgithub.com%2Fkashif-khan%2Fha-apps)

## Apps

### [Homebox](./homebox)

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]

_Home inventory built from the [kashif-khan/homebox](https://github.com/kashif-khan/homebox)
fork of [Homebox](https://github.com/sysadminsmedia/homebox), with scheduled,
versioned and remote backups._

## Adding an app

1. Create a directory named after the app's `slug`, with `config.yaml`,
   `Dockerfile`, `README.md`, `DOCS.md` and `CHANGELOG.md`.
2. Set `image` to `ghcr.io/kashif-khan/app-<slug>`.
3. Bump `version` and update the changelog on every change; pushing to `main`
   builds and publishes the image.

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
