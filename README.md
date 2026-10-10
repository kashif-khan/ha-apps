# Kashif Khan's Home Assistant apps

Third-party Home Assistant app store. Each app lives in its own repository,
which is a fork of the community packaging with changes rebased on top. This
repository is generated from them by the repository updater; do not edit the
app folders by hand.

| Layer | Repository |
| ----- | ---------- |
| App store | [kashif-khan/ha-apps](https://github.com/kashif-khan/ha-apps) |
| App packaging | kashif-khan/app-\<name\>, forked from hassio-addons/app-\<name\> |
| Application | kashif-khan/\<name\>, forked from the original project |

## Installation

[![Open your Home Assistant instance and show the app store with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_store.svg)](https://my.home-assistant.io/redirect/supervisor_store/?repository_url=https%3A//github.com/kashif-khan/ha-apps)

Or add this URL in the Home Assistant app store, under repositories:

```txt
https://github.com/kashif-khan/ha-apps
```

## Apps provided by this repository

### [Homebox][addon-homebox]

![Latest Version][homebox-version-shield]

Inventory and organization system for the things in your home

[Homebox app documentation][addon-doc-homebox]

## Support

Open an issue on the repository that matches the problem:

- [Homebox packaging](https://github.com/kashif-khan/app-homebox/issues)
- [This app store](https://github.com/kashif-khan/ha-apps/issues)

[addon-homebox]: https://github.com/kashif-khan/app-homebox/tree/v0.27.0-rc.1-kk.8
[addon-doc-homebox]: https://github.com/kashif-khan/app-homebox/blob/v0.27.0-rc.1-kk.8/README.md
[homebox-version-shield]: https://img.shields.io/badge/version-v0.27.0--rc.1--kk.8-blue.svg
