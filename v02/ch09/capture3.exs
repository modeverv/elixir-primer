func = &{:ok, &1 * &1} # タプルが返る
func = &({:ok, &1 * &1}) #同じ
func = &[:ok, &1 * &1] #リストが返る
x = func.(7)
IO.inspect x

