u = %User{name: "fo", email: "foo@exmple.com"}
%User{name: "fo", email: x} = u
IO.inspect x
%{email: x} = u
IO.inspect x

