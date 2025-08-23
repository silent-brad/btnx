# Setup Instructions

### Commands to install
- Enter Nix Dev Shell
  - `nix develop`
- Install Phoenix tools
  - `mix local.hex` (`--force`??)
  - `mix local.rebar` (`--force`??)
  - `mix archive install hex phx_new`
- Setup new Phoenix project
  - `mix phx.new . --app btnx --database sqlite3 --no-esbuild --install`
- Compute and run
  - `mix ecto.create`
  - `mix compile`
  - `mix phx.server` -> localhost:4000

