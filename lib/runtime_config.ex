defmodule Coordination.RuntimeConfig do
  # use Bonfire.Common.Localise

  @behaviour Bonfire.Common.ConfigModule
  def config_module, do: true

  @doc """
  Sets runtime configuration for the extension (typically by reading ENV variables).
  """
  def config do
    import Config

    # config :coordination,
    #   modularity: System.get_env("ENABLE_coordination") || :disabled
  end
end
