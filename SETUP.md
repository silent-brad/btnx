# Setup Instructions

### Commands to install
- Enter Nix Dev Shell
  - `nix develop`
- Setup new Phoenix project
  - `mix phx.new . --app btnx --database sqlite3 --no-esbuild --install`
- Compute and run
  - `mix ecto.create`
  - `mix ecto.migrate`
  - `mix compile`
  - `mix phx.server` (or `mps` on my machine) -> localhost:4000

