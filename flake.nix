{
  description = "Elixir Phoenix Dev Environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            erlang
            elixir
            sqlite
            tailwindcss
            watchman
            inotify-tools
          ];
          shellHook = ''
            export ERL_AFLAGS="-kernel shell_history enabled"

            alias mdg='mix deps.get'
            alias mps='mix phx.server'
            alias test='mix test'
            alias c='iex -S mix'
          '';
        };
      });
}
