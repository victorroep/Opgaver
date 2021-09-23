int a = int(random(11));
int b = int(random(11));
if(a == 10 || b == 10 || a + b == 10){
    println("Success!");
}else{
    println("Failure!");
}

int x = int(random(31));
int y = int(random(31));
int z = int(random(31));
if(x + y + z != 30 || x % 10 == 0 || y % 10 == 0 || z % 10 == 0){
    println("Failure!");
}else{
    println("Success!");
}
