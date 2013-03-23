fun partition f lis = ( List.filter f lis,
                        List.filter (fn x => not(f(x))) lis  );

