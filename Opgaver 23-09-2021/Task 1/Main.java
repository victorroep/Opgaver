class Main {
    public static void main(String[] args) {
        printEmptyLine();
        print("Gnom");
        printInfo("Victor","21");
    }
    public static void printEmptyLine() {
		System.out.println("");
	}
    public static void print(String s){
        System.out.println(s);
    }
    public static void printInfo(String name, String age){
        System.out.println("Hello, my name is " + name + ". I am " + age + " years old.");
    }
}