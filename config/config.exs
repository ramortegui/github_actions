# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :github_actions,
  ecto_repos: [GithubActions.Repo]

# Configures the endpoint
config :github_actions, GithubActionsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Zte9SH65y+kh5Y5Z4NJItaRms/nMsiaOXyFlIdSY6VuX8fC5yyv9ol0JsJr+Dsjq",
  render_errors: [view: GithubActionsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GithubActions.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
