ages = %{"Alice"  => 23, "Bob" => 15, "Charlie" => 10}
ages2 = %{Alice:  23, age: 15, Charlie: 10}

IO.inspect ages["Bob"]
IO.inspect ages["David"]
IO.inspect ages2[:Alice]
IO.inspect ages2.age

ages = %{ ages | "Bob" => 16}
IO.inspect ages

ages = Map.merge(ages,%{"Tom" => 10})
IO.inspect ages
#Map.delete/2
#Map.drop/2

# Mapの繰り返し
Enum.each ages, fn({name,value}) ->
  IO.puts "#{name} => #{value}"
end
# for マクロ
for {name , value} <- ages do
    IO.puts "#{name} => #{value}"
end

