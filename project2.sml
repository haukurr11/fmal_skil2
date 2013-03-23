(* 3a *)
fun isSorted (nil)=true
|   isSorted(n::nil)=true
|   isSorted(n::m::L)= if n>m
                          then false
                       else
                          isSorted(m::L);

(* 3b *)
fun sum(nil)=0
|   sum(n::L)= n+sum(L);

(* 3c *)
fun mSum(nil)=0
|   mSum(n::L)= sum(n)+mSum(L);

(* 3d *)
fun partition f lis = ( List.filter f lis,
                        List.filter (fn x => not(f(x))) lis);

(* 4a *)
fun insert(k:real,n::L) = if k>n
                             then n::insert(k,L)
                          else
                             k::n::L
|   insert(k:real,nil) = k::nil;

(* 4b *)
fun insertsort(n::L:real list) = insert(n,insertsort(L))
|   insertsort(nil) = nil;

(* 4c *)
fun applyList(n::L,x,y) = n(x,y)::applyList(L,x,y)
|   applyList(nil,x,y) = nil;

(* 4d *)
fun mult x 0 = 0
|   mult x y = x+mult x(y-1);
fun double() x = mult x(2);
fun triple() x = mult x(3);

(* 4e *)
fun mymap(f) (n::L) = f(n)::mymap(f) L
|   mymap(f) nil = nil;

(* 5a *)
fun f(n,1) = true
|   f(n,m) = if not( (n mod m) = 0)
                then f(n,m-1)
             else
                false;

(* 5b *)
fun prime(n) = if n=1
                  then false
               else
                  f(n,n-1);


(* Test cases *)

(* 3a *)
isSorted [11,12,13,13]; 
isSorted [11,13,12,13];

(* 3b *)
sum [1,2,3,4,5];

(* 3c *)
mSum [ [1, 2, 3], [4, 5, 6], [ 7, 8, 9]]; 

(* 3d *)
partition Char.isLower [#"P",#"a",#"3",#"%",#"b"];

(* 4a *)
insert (3.3, [1.1, 2.2, 4.4, 5.5]);

(* 4b *)
insertsort [2.2, 4.4, 5.5, 3.3, 1.1];

(* 4c *)
applyList ([Int.min, Int.max, Int.+, Int.-], 4,3);

(* 4d *)
mult 2 3; 
double() 3; 
triple() 3;

(* 4e *)
(mymap (fn x => x*x)) [1,2,3,4];

(* 5a & b *)
prime(1); 
prime(7); 
prime(8); 
prime(11); 