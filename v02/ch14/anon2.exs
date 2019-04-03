double_or_triple = fn
  {:a, n} -> {:a, n*2}
  {:b, n} -> {:b, n*3}
  x -> x
end

x = double_or_triple.({:a, 7})
y = double_or_triple.({:b, 7})
z = double_or_triple.({:c, 7})

IO.inspect x
IO.inspect y
IO.inspect z

d = fn
  :a,n -> {:a, n * 2}
  :b,n -> {:b, n * 2}
end

xx = d.(:a, 2)
IO.inspect xx

#リスト
[3, "pie", :a]
#タプル
{3, "pie", :a}
#キーワードリスト
[foo: "bar", hello: "world"]
#マップ
map = %{:foo => "bar", "hello" => :world}
map = %{map | foo: "bar"} #これ
map = %{map | "hello" => "bar"} #これ
IO.inspect map
