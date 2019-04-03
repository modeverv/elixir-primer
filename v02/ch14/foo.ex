defmodule Foo do
  def hello(%{name: name}) do
    IO.puts "Hello #{name}"
  end

  def hello(_) do
    IO.puts "Who ar you?"
  end
end

