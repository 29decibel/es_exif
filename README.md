# EsExif

Elixir wrapper of rust's [exif](https://docs.rs/kamadak-exif/latest/exif/)

Example usage:

```elixir
EsExif.parse "./test_photos/_DSF2568.JPG"

```

Example outputs:

```bash
iex(1)> {:ok, infos} = EsExif.parse "./test_photos/_DSF2568.JPG"
{:ok,
 [
   %{__struct__: FieldInfo, name: "Make", value: "\"FUJIFILM\""},
   %{__struct__: FieldInfo, name: "Model", value: "\"X-T4\""},
   %{
     __struct__: FieldInfo,
     name: "Orientation",
     value: "row 0 at top and column 0 at left"
   },
   %{__struct__: FieldInfo, name: "XResolution", value: "72"},
   %{__struct__: FieldInfo, name: "YResolution", value: "72"},
   %{__struct__: FieldInfo, name: "ResolutionUnit", value: "inch"},
   %{
     __struct__: FieldInfo,
     name: "Software",
     value: "\"Digital Camera X-T4 Ver1.20\""
   },
   %{__struct__: FieldInfo, name: "DateTime", value: "2021-10-02 11:24:03"},
   %{
     __struct__: FieldInfo,
     name: "Artist",
     value: "\"                                                                                                                                                                                                                                                               \""
   },
   %{__struct__: FieldInfo, name: "YCbCrPositioning", value: "centered"},
   %{
     __struct__: FieldInfo,
     name: "Copyright",
     value: "\"                                                                                                                                                                                                                                                               \""
   },
   %{__struct__: FieldInfo, name: "ExposureTime", value: "1/6400"},
   %{__struct__: FieldInfo, name: "FNumber", value: "1.4"},
   %{__struct__: FieldInfo, name: "ExposureProgram", value: "aperture priority"},
   %{__struct__: FieldInfo, name: "PhotographicSensitivity", value: "160"},
   %{__struct__: FieldInfo, name: "SensitivityType", value: "SOS"},
   %{__struct__: FieldInfo, name: "ExifVersion", value: "2.3"},
   %{
     __struct__: FieldInfo,
     name: "DateTimeOriginal",
     value: "2021-10-02 11:24:03"
   },
   %{
     __struct__: FieldInfo,
     name: "DateTimeDigitized",
     value: "2021-10-02 11:24:03"
   },
   %{__struct__: FieldInfo, name: "ComponentsConfiguration", value: "YCbCr_"},
   %{__struct__: FieldInfo, name: "CompressedBitsPerPixel", value: "4.8"},
   %{__struct__: FieldInfo, name: "ShutterSpeedValue", value: "12.73"},
   %{__struct__: FieldInfo, name: "ApertureValue", value: "1"},
   %{__struct__: FieldInfo, name: "BrightnessValue", value: "8.19"},
   %{__struct__: FieldInfo, name: "ExposureBiasValue", value: "0"},
   %{__struct__: FieldInfo, name: "MaxApertureValue", value: "1"},
   %{__struct__: FieldInfo, name: "MeteringMode", value: "pattern"},
   %{__struct__: FieldInfo, name: "LightSource", value: "unknown"},
   %{
     __struct__: FieldInfo,
     name: "Flash",
     value: "not fired, no return light detection function, auto mode 0 (unknown)"
   },
   %{__struct__: FieldInfo, name: "FocalLength", value: "16"},
   %{__struct__: FieldInfo, name: "FlashpixVersion", value: "1.0"},
   %{__struct__: FieldInfo, name: "ColorSpace", value: "uncalibrated"},
   %{__struct__: FieldInfo, name: "PixelXDimension", value: "6240"},
   %{__struct__: FieldInfo, name: "PixelYDimension", value: "4160"},
   %{__struct__: FieldInfo, name: "FocalPlaneXResolution", value: "2660"},
   %{__struct__: FieldInfo, name: "FocalPlaneYResolution", value: "2660"},
   %{__struct__: FieldInfo, name: "FocalPlaneResolutionUnit", value: "cm"},
   %{
     __struct__: FieldInfo,
     name: "SensingMethod",
     value: "one-chip color area sensor"
   },
   %{__struct__: FieldInfo, name: "FileSource", value: "digital still camera"},
   %{
     __struct__: FieldInfo,
     name: "SceneType",
     value: "directly photographed image"
   },
   %{__struct__: FieldInfo, name: "CustomRendered", value: "normal process"},
   %{__struct__: FieldInfo, name: "ExposureMode", value: "auto exposure"},
   %{__struct__: FieldInfo, name: "WhiteBalance", value: "auto white balance"},
   %{__struct__: FieldInfo, name: "FocalLengthIn35mmFilm", value: "24"},
   %{__struct__: FieldInfo, name: "SceneCaptureType", value: "standard"},
   %{__struct__: FieldInfo, name: "Sharpness", ...},
   %{__struct__: FieldInfo, ...},
   %{...},
   ...
 ]}
```

Here are all the available tags:
https://docs.rs/kamadak-exif/latest/exif/struct.Tag.html

## TODO

- [ ] Expose more native fields types instead of just string
- [ ] tests

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
