defmodule ApiBlog.Repo do
  use Ecto.Repo,
    otp_app: :api_blog,
    adapter: Ecto.Adapters.Postgres
end
