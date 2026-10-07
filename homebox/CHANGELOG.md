<!-- https://developers.home-assistant.io/docs/apps/presentation#keeping-a-changelog -->
## 0.27.0-rc.1-kk.4

- Rebase on fork v0.27.0-rc.1-kk.3, which fixes the aarch64 binary failing to start (missing musl loader).

## 0.27.0-rc.1-kk.3

- Fix start-up crash when a boolean option is `false`.
- Generate the API key pepper Homebox now requires on first start.
- Turn off the upstream GitHub release check.

## 0.27.0-rc.1-kk.2

- Initial release, based on the kashif-khan/homebox fork at v0.27.0-rc.1-kk.2.
