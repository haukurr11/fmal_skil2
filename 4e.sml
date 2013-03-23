fun mymap(f) (n::L) = f(n)::mymap(f) L
|   mymap(f) nil = nil;
