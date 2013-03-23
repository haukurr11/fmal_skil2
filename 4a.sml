fun insert(k:real,n::L) = if k>n then n::insert(k,L)
                       else k::n::L
| insert(k:real,nil) = k::nil;
