ages = %{"Alice"  => 23, "Bob" => 15, "Charlie" => 10}
ages2 = %{Alice:  23, Bob: 15, Charlie: 10}

IO.inspect ages["Bob"]
IO.inspect ages["David"]
IO.inspect ages2[:Bob]

