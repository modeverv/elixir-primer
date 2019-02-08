defmodule Hello3 do
  def message(name \\ "world") do
    "Hello #{name}!!"
  end
end

IO.puts Hello3.message("afefada")
IO.puts Hello3.message

