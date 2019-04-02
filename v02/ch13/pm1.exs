
#  x = {:a, 3}
#  {:a, y} = x
#  IO.inspect y #=> 3
#
x = [:a, :b, :c]
[y, :b, :c] = x
IO.inspect y
[y | z] = x
IO.inspect y
IO.inspect z
[y, :b | z] = x
IO.inspect y
IO.inspect z
