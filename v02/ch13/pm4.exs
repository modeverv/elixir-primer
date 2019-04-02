m = %{a: 1, b: 2}
%{a: x, b: 2} = m
IO.inspect x
%{a: x} = m
IO.inspect x
#%{a: x, c: 3} = m
#IO.inspect x

m = %{a: {:ok, 1}, b: 2}
%{a: {:ok, x}} = m
IO.inspect x






