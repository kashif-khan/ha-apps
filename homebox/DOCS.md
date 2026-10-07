# Home Assistant App: Homebox

[Homebox][upstream] is an inventory system for the things in your house. It
keeps a record of what you own, where you put it, what it cost and what it is
worth now, and it is built for a household rather than a warehouse.

Items live in locations, locations nest inside each other, and anything can be
labelled. An item gets photos, receipts, manuals, a serial number, a warranty
date and custom fields, and all of it is searchable. Homebox can also keep
maintenance logs and print sheets of QR code labels.

This app runs the [kashif-khan/homebox][fork] fork, which adds scheduled,
versioned and remote backups on top of upstream Homebox.

## Installation

1. Add `https://github.com/kashif-khan/ha-apps` as an app repository.
1. Install the "Homebox" app and start it.
1. Check the log to see that it started without errors.
1. Open `http://homeassistant.local:7745`.

## Logging in for the first time

Homebox ships with no accounts. The first screen offers to register one, and
that account administers your inventory.

Once you have it, turn `allow_registration` off. It is on by default only so
the first account can be made; leaving it on lets anybody who can reach the
port create one. Invite everybody else from inside Homebox.

## Configuration

**Note**: _Restart the app after changing the configuration._

```yaml
log_level: info
allow_registration: false
max_upload_size: 25
trust_proxy: false
```

Most of Homebox is configured from inside Homebox itself. These options have
to be settled before it starts.

### Option: `log_level`

Verbosity of the app log: `trace`, `debug`, `info`, `warn`, `error`, `fatal` or
`panic`. Leave it on `info` unless you are troubleshooting.

### Option: `allow_registration`

Lets anybody who can reach the app create an account. Defaults to `true` so
the first account can be made; turn it off afterwards.

### Option: `max_upload_size`

Largest file that can be attached to an item, in megabytes. Defaults to `10`.

### Option: `trust_proxy`

Turn this on when Homebox sits behind a reverse proxy, so that https and the
client address are detected correctly. Defaults to `false`.

### Options: `smtp_host`, `smtp_port`, `smtp_from`, `smtp_user`, `smtp_password`

Mail server used for notification emails. Email stays disabled while
`smtp_host` is empty.

### Other settings

Any other Homebox setting can be placed in `/data/config.yml` in the app's
data folder, or configured inside Homebox (backups, OIDC and so on).

## Backups

The database and uploads live in the app's data folder and are included in Home
Assistant backups. The app is stopped while a backup is taken (`cold`), which
keeps the SQLite database consistent. The fork's own scheduled and remote
backups are configured inside Homebox.

## Support

Problems with this packaging belong in the [ha-apps issue tracker][issues];
problems with Homebox itself belong in the [fork][fork] or [upstream] trackers.

[fork]: https://github.com/kashif-khan/homebox
[upstream]: https://github.com/sysadminsmedia/homebox
[issues]: https://github.com/kashif-khan/ha-apps/issues
