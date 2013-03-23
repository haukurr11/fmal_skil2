fun f(n,1) = true 
|   f(n,m) = if not( (n mod m) = 0) then f(n,m-1) else false;
