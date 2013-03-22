fun sum(nil)=0|
sum(n::L)= n+sum(L);

fun mSum(nil)=0|
mSum(n::L)= sum(n)+mSum(L);
