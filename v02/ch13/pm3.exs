x = [a: 1,b: 2]
[a: y, b: 2] = x
IO.inspect y
[{:a, y} | z] = x
IO.inspect y
IO.inspect z


