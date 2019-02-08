a = [1,2]
b = [0 | a]
IO.inspect b
c = [a | 3]
d = a ++ [3]
IO.inspect c
IO.inspect d

# push しないで unshiftしてreverse

e = []
e = [1|e]
e = [2|e]
e = [3|e]
e = Enum.reverse(e)
IO.inspect e

