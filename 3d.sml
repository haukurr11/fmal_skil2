fun addiftrue(f,n::L) = if f(n) then n::addiftrue(L) else addiftrue(L);
fun addiftrue(f,nil) = nil;
fun addiffalse(f,n::L) = if !f(n) then n::addiffalse(L) else addiffalse(L);
fun addiffalse(f,nil) = nil; 
fun test(f,n::L) = ([addiftrue(f,n::L)],[addiffalse(f,n::L)]);
test(Char.isLower,[#"s"]);
