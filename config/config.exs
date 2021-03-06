# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :presence_chat, PresenceChat.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "Lc8xjO39xaDp7Gllh3zewxV0N4n1d2KGvKm0AqiJq/n0mTbBU50WUuFUhPSiSMuA",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: PresenceChat.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :presence_chat, PresenceChat.Presence,
  pubsub_server: PresenceChat.PubSub,
  heartbeat_interval: 500


# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
