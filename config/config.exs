# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :api_blog,
  ecto_repos: [ApiBlog.Repo]

# Configures the endpoint
config :api_blog, ApiBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sFFdZUdYr2MXPk8XZ5NRo9RQpJqulL5YfGUBJnPcnaIYZnVlclqg8YmRFpzdO+dZ",
  render_errors: [view: ApiBlogWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ApiBlog.PubSub,
  live_view: [signing_salt: "fDeYINRA"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :api_blog, ApiBlogWeb.Guardian,
               issuer: "api_blog",
               secret_key: "QICwe8lU/6N5ggNQ44UM0BGM5uUL3Mmh5/LUv9E2+R4fm21rgJCA8KusjZkuaLiT"