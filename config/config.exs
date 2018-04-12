# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_vue_graph_ql,
  ecto_repos: [PhoenixVueGraphQl.Repo]

# Configures the endpoint
config :phoenix_vue_graph_ql, PhoenixVueGraphQlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nx+0wvlcBZIY2dA2FWkvTwVEja5vir4RXv1qwqyDqTw7ZqerlOf/UAeVZC8XNn1O",
  render_errors: [view: PhoenixVueGraphQlWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixVueGraphQl.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
