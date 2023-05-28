defmodule EsExif do
  defmodule Native do
    @moduledoc false
    use Rustler, otp_app: :es_exif, crate: "exifrs"

    # When your NIF is loaded, it will override this function.
    def parse(_a), do: :erlang.nif_error(:nif_not_loaded)
  end

  @moduledoc """
  Documentation for `EsExif`.
  """

  def parse(image_path) when is_binary(image_path) do
    case image_path |> Native.parse() do
      {:ok, fields} ->
        result =
          fields
          |> Enum.reduce(%{}, fn %{name: name, value: value}, acc ->
            acc |> Map.put_new(name, value |> trim_value |> parse_value(name))
          end)

        {:ok, result}

      {:error, err} ->
        {:error, err}
    end
  end

  # triming values
  defp trim_value(str) when is_binary(str) do
    str |> String.trim("\"") |> String.trim()
  end

  defp trim_value(str), do: str

  # parse value to correct types
  defp parse_value(value, "DateTimeDigitized") when is_binary(value) do
    parse_date(value)
  end

  defp parse_value(value, "DateTimeOriginal") when is_binary(value) do
    parse_date(value)
  end

  defp parse_value(value, name), do: value

  defp parse_date(value) do
    with {:ok, date} <- NaiveDateTime.from_iso8601(value) do
      date
    else
      {:error, _} ->
        value
    end
  end
end
