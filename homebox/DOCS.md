# Home Assistant App: Homebox

## How to use

Start the app and open the web interface on port 7745
(`http://homeassistant.local:7745`). The first account you register becomes
the owner of the group.

This is a build of the [kashif-khan/homebox][fork] fork, which adds scheduled,
versioned and remote backups on top of [Homebox][upstream]. All data, including
the database and uploads, is kept in the app's `/data` folder and is part of
Home Assistant backups (cold backup, the app is stopped while it runs).

## Options

| Option               | Default | Description                                          |
| -------------------- | ------- | ---------------------------------------------------- |
| `log_level`          | `info`  | Log verbosity.                                       |
| `allow_registration` | `true`  | Let people register their own accounts.              |
| `max_upload_size`    | `10`    | Largest attachment, in MB.                           |
| `trust_proxy`        | `false` | Enable when running behind a reverse proxy.          |
| `smtp_*`             |         | Optional mail server; email is disabled when unset.  |

Any other Homebox setting can be placed in `/data/config.yml`.

[fork]: https://github.com/kashif-khan/homebox
[upstream]: https://github.com/sysadminsmedia/homebox
