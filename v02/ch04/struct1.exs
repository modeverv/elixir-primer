m = %{name: "foo", email: "foo@example.com"}
u = %User{name: "foo", email: "foo@example.com"}
u2 = %User{:name =>  "foo", :email => "foo@example.com"}
IO.inspect m
IO.inspect u
IO.inspect u2
IO.inspect m.email
IO.inspect u.email
u3 = %User{u | email: "bar@example.com"}
IO.inspect u3
u4 = Map.merge(u, %{email: "xx@exapmle.com"})
IO.inspect u4
  
