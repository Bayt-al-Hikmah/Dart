import "./my_library.dart";
import "dart:io";

void main(){
    stdout.write("Enter number of elements in the List: ");
    int n = int.parse(stdin.readLineSync()!);
    List<int> list = [];
    for(int i = 0; i < n; i++){
        stdout.write("Enter element ${i + 1}: ");
        list.add(int.parse(stdin.readLineSync()!));
    }
    print("Smallest element in the List: ${smallest_el(list)}");
    print("Biggest elementin in the List: ${largest_el(list)}");
    print("Average is: ${avg(list)}");
}