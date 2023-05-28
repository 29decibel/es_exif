defmodule EsExif.MixProject do
  use Mix.Project

  def project do
    [
      app: :es_exif,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "EsExif",
      source_url: "https://github.com/29decibel/es_exif"
    ]
  end

  defp description() do
    "Elixir wrapper to get Exif info of image. Wrapper of Rust kamadak-exif."
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.24.0"}
    ]
  end

  defp package() do
    [
      name: "es_exif",
      files: ~w(lib .formatter.exs mix.exs README* readme* LICENSE*
                license* CHANGELOG* changelog* native),
      licenses: ["MIT License"],
      links: %{"GitHub" => "https://github.com/29decibel/es_exif"}
    ]
  end
end
