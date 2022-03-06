# EsExif

Elixir wrapper of rust's [exif](https://docs.rs/kamadak-exif/latest/exif/)

Example usage:
```elixir
EsExif.parse "./test_photos/_DSF2568.JPG"
```

## TODO
[] Expose more native fields types instead of just string
[] tests

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `es_exif` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:es_exif, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/es_exif>.

