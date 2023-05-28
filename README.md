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
 %{
   "SensitivityType" => "SOS",
   "BrightnessValue" => "8.19",
   "Sharpness" => "normal",
   "YResolution" => "72",
   "ComponentsConfiguration" => "YCbCr_",
   "PixelXDimension" => "6240",
   "ExifVersion" => "2.3",
   "Software" => "Digital Camera X-T4 Ver1.20",
   "FNumber" => "1.4",
   "Copyright" => "",
   "Flash" => "not fired, no return light detection function, auto mode 0 (unknown)",
   "ExposureTime" => "1/6400",
   "Orientation" => "row 0 at top and column 0 at left",
   "SubjectDistanceRange" => "unknown",
   "ResolutionUnit" => "inch",
   "FocalPlaneYResolution" => "2660",
   "FocalLength" => "16",
   "ColorSpace" => "uncalibrated",
   "FocalLengthIn35mmFilm" => "24",
   "BodySerialNumber" => "1BA03339",
   "CompressedBitsPerPixel" => "4.8",
   "FocalPlaneResolutionUnit" => "cm",
   "FlashpixVersion" => "1.0",
   "ExposureMode" => "auto exposure",
   "MeteringMode" => "pattern",
   "SceneType" => "directly photographed image",
   "DateTimeDigitized" => "2021-10-02 11:24:03",
   "SceneCaptureType" => "standard",
   "PhotographicSensitivity" => "160",
   "MaxApertureValue" => "1",
   "LensSpecification" => "16-16 mm, f/1.4-1.4",
   "LensSerialNumber" => "1AA01518",
   "Make" => "FUJIFILM",
   "ExposureProgram" => "aperture priority",
   "XResolution" => "72",
   "DateTimeOriginal" => "2021-10-02 11:24:03",
   "CustomRendered" => "normal process",
   "ApertureValue" => "1",
   "Artist" => "",
   "ExposureBiasValue" => "0",
   "Gamma" => "2.2",
   "SensingMethod" => "one-chip color area sensor",
   "LightSource" => "unknown",
   "FileSource" => "digital still camera",
   "YCbCrPositioning" => "centered",
   "WhiteBalance" => "auto white balance",
   "Model" => "X-T4",
   "LensModel" => "XF16mmF1.4 R WR",
   ...
 }}
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
