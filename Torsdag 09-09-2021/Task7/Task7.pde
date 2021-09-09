int input = int(random(-40,40));
for(int i = abs(input); i > 0; i--){
    String operator = "";
    if(input < 0) operator = "-";
    if(i == 6){
        println(operator+"six");
    }else if(abs(i) == abs(input)/2){
        println("HALF!");
    }else{
        println(operator+i);
    }
}
