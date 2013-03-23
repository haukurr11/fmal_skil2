fun insert(k:real,n::L) = if k>n then n::insert(k,L)
                       else k::n::L
| insert(k:real,nil) = k::nil;
fun insertsort(n::L:real list) = insert(n,insertsort(L))
| insertsort(nil) = nil;
