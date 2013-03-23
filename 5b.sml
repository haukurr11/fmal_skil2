fun f(n,1) = true 
|   f(n,m) = if not( (n mod m) = 0) then f(n,m-1) else false;
fun prime(n) = if n=1 then false else f(n,n-1);
