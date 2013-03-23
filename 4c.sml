fun applyList(n::L,x,y) = n(x,y)::applyList(L,x,y)|
applyList(nil,x,y) = nil;
