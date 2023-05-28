defmodule EsExifTest do
  use ExUnit.Case
  doctest EsExif

  test "return map when run parse" do
    {:ok, result} = EsExif.parse("./test_photos/_DSF2568.JPG")
    assert Map.get(result, "LensModel") == "XF16mmF1.4 R WR"
  end
end
