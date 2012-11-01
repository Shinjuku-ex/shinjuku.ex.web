defmodule ShinjukuEx.Mixfile do
  use Mix.Project

  def project do
    [ app: :shinjuku_ex,
      version: "0.0.1",
      prepare_task: "dynamo.app",
      compilers: [:elixir, :dynamo, :app],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  defp deps do
    [ { :ranch, %r(.*), github: "extend/ranch" },
      { :cowboy, %r(.*), github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", github: "josevalim/dynamo" } ]
  end
end
