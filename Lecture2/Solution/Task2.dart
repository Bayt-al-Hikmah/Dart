void main(){
    // 1
    List<String> colors = ["red", "green", "blue"];
    print("First element ${colors.first}");
    print("Last element ${colors.last}");
    colors.add("yellow"); 
    colors.insert(0, "black"); 
    print(colors.removeLast()); 
    print(colors.contains("green")); 
    
    //2
    List<int> numbers = [1, 2, 2, 3, 4, 4, 5].toSet().toList();
    numbers.removeAt(1); 
    numbers.insert(2, 25); 
    //3
    List<int> sortMe = [5, 3, 8, 1];
    sortMe.sort();
    print(sortMe); 
}