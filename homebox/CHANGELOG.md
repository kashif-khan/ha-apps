## What's new

### AI assistants can now work with your inventory
Claude, ChatGPT, Cursor, Claude Code and other [Model Context Protocol](https://modelcontextprotocol.io) clients can search your inventory and, where you allow it, change it: "which warranties run out this quarter?", "move the drill to the garage", "make a template for power tools".

It is **off by default**. To use it:

1. Turn on **AI assistants (MCP)** in this app's configuration (new options below).
2. In Homebox, open **Collection → Settings → AI assistant access** and choose how far assistants may go in that collection: off, read only, read and edit, or read, edit and delete.
3. Connect an assistant:
   - **Claude, ChatGPT and other hosted assistants:** add `https://<your-address>/mcp` as a custom connector and sign in. This needs a public `https` address, so set **Base URL** too.
   - **Claude Code, Cursor, VS Code and scripts on your network:** create a key under **Profile → API Keys** and use `http://<your-address>:7745/mcp`.

Three parties each have a say, and the weakest wins: this app's options, the collection owner, and what each user approves on the consent screen. Assistants only ever act as the person who connected them, inside the one collection they chose.

What assistants can do: search and read items, locations, tags, maintenance and warranties; create, update, move and tag items; manage maintenance entries and **item templates**; and delete, after you confirm each deletion.

### API keys now have permissions
- Choose **Read only**, **Read and edit** or **Full access** when creating a key, and optionally pin it to one collection.
- New keys default to read-only. Existing keys keep full access, so nothing you already built breaks.
- A **Connected AI assistants** list on your profile shows who is connected, with a Disconnect button that takes effect immediately.

### New app options
- `mcp_enabled` (default off): turn AI assistant access on.
- `mcp_allow_writes` (default on): set to off to make every assistant read-only.
- `mcp_allow_delete` (default off): let assistants delete, after you confirm each one.

## Things to know before updating
- **Database migrations run on first start** (API key permissions, a per-collection AI-access setting, and sign-in tables for assistants). Take a backup first if you want a way back; migrations are not reversed by downgrading.
- **API keys can no longer create or list API keys**, even full-access ones. Manage keys from the web interface.
- Keys created from now on without choosing permissions are **read-only**.
- The default for every collection is AI access **off**; nothing changes for you until you turn it on.

## Security
- Assistants sign in with OAuth 2.1 and PKCE; replaying a code or an old refresh token revokes the connection.
- Everything an assistant does is logged with who, which collection and which tool, never the values.
- Inventory text is treated as untrusted by the assistant, and deletions need explicit confirmation.

Full details: *AI Assistants (MCP)* in the Homebox documentation. Application changes: https://github.com/kashif-khan/homebox/pull/7
