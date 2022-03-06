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

  @doc """
  Hello world.

  ## Examples

      iex> EsExif.hello()
      :world

  """
  def hello do
    :world
  end

  def parse(image_path) when is_binary(image_path) do
    image_path
    |> Native.parse()
  end
end
