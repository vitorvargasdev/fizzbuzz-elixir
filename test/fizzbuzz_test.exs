defmodule FizzbuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      assert Fizzbuzz.build("numbers.txt") ==
               {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}
    end

    test "when an invalid file is provided, returns an error" do
      assert Fizzbuzz.build("invalid_file.txt") ==
               {:error, "Error reading the file: enoent"}
    end
  end
end
