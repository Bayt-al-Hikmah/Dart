import 'dart:io';

void main(){
    stdout.write("Enter the radius of the circle:");
    final pi = 3.1415;
    double radius  = double.parse(stdin.readLineSync()!);
    double area = radius * radius * pi;
    print("Surface area of the circle: $area");
    
}
