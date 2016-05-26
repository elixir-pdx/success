defmodule Success.Mixfile do
  use Mix.Project

  def project do
    [app: :success,
     version: "0.0.1",
     elixir: "~> 1.2",
     dialyzer: [
       plt_add_apps: [],
       flags: ["-Wunmatched_returns",
               "-Werror_handling",
               "-Wrace_conditions",
               "-Wunderspecs",
               "-Wunknown",
               # "-Woverspecs",
               # "-Wspecdiffs"
              ]],
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:dialyxir, "~> 0.3.3", only: [:dev]},
     {:uuid, "~> 1.1.3"}]
  end
end
