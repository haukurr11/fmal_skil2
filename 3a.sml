
fun isSorted (nil)=true|

isSorted(n::nil)=true|

isSorted(n::m::L)= if n>m then false else isSorted(m::L);