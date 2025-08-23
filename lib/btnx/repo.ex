defmodule Btnx.Repo do
  use Ecto.Repo,
    otp_app: :btnx,
    adapter: Ecto.Adapters.SQLite3
end
