defmodule GoogleConsumer.MixProject do
  use Mix.Project

  def project do
    [
      app: :google_consumer,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {GoogleConsumer.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:google_api_retail, "~> 0.7.0"},
      {:goth, "~> 1.2.0"}
    ]
  end
end
