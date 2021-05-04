defmodule SevenGuisCounter.Repo do
  use Ecto.Repo,
    otp_app: :seven_guis_counter,
    adapter: Ecto.Adapters.Postgres
end
