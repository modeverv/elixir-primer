list = [1,2,3]
list = Enum.map(list, fn(n) -> n * 2 end)
list = Enum.map(list, &(&1 * 2))
list = list |> Enum.map(&(&1 * 2))
IO.inspect list
