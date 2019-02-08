defmodule Hello3 do
  def message(name) do
    "Hello #{name}!!"
  end
  def message do
    "Hello world!!"
  end
end

IO.puts Hello3.message("afefada")
IO.puts Hello3.message

