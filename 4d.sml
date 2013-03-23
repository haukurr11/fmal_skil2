fun mult x 0 = 0
|   mult x y = x+mult x(y-1);
fun double() x = mult x(2);
fun triple() x = mult x(3);
