fun true_list(f,n::L) = if f(n) then n::true_list(f,L) 
                        else true_list(f,L)
|true_list(f,nil) = nil;

fun false_list(f,n::L) = if not(f(n)) then n::false_list(f,L)
                         else false_list(f,L)
|false_list(f,nil) = nil;

fun partition f n = (true_list(f,n),false_list(f,n));

