defmodule GoogleConsumerTest do
  use ExUnit.Case
  doctest GoogleConsumer

  test "greets the world" do
    assert GoogleConsumer.hello() == :world
  end
end
