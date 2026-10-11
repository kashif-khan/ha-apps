## Highlights

- **Typed custom fields:** decimal, currency, date, time, date and time (with time zone), link and choice list, validated on save.
- **Expiry dates** for food and medicine (expires / use by / best before): item badge, list filter and sort, an Expired / Expiring soon card on the home page, required-expiry entity types, and template defaults.
- **Alert rules** (Collection → Alerts): be told N days before or after an expiry, warranty end or maintenance date. Alerts follow each collection's own time zone and send hour, are sent late rather than dropped if Homebox was down, and go out once.
- **Webhooks** (new option, off by default): signed, retried callbacks for item, date and backup events, with fields that say when a delivery is late.
- Country, currency and time zone are pre-filled from your browser at sign-up.
- Fixes: price fields show the currency, "Sold On" label, whole-number custom fields stay whole.

## Upgrade notes

The old "notify at server hour 8" job is replaced by per-collection alert rules. Collections that already had notifiers get a "Maintenance due" rule automatically, so reminders keep working (the message format is new).
