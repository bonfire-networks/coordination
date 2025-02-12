import Config

#### General configuration useful for tests, everything else should be in `cooperation.exs` or `Cooperation.RuntimeConfig`

# You probably won't want to touch these. You might override some in
# other config files.

config :bonfire, :repo_module, Bonfire.Common.Repo

config :phoenix, :json_library, Jason

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mime, :types, %{
  "application/activity+json" => ["activity+json"]
}

config :cooperation, :otp_app, :cooperation
config :bonfire_common, :otp_app, :cooperation
config :cooperation, :repo_module, Bonfire.Common.Repo
config :cooperation, ecto_repos: [Bonfire.Common.Repo]
config :bonfire_common, :localisation_path, "priv/localisation"

config :bonfire_data_identity, Bonfire.Data.Identity.Credential, hasher_module: Argon2

import_config "cooperation.exs"
# import_config "#{Mix.env()}.exs"
