import 'dart:math';
import 'dart:io';

void main() {
  stdout.write("Enter a: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Enter b: ");
  double b = double.parse(stdin.readLineSync()!);
  stdout.write("Enter c: ");
  double c = double.parse(stdin.readLineSync()!);
  double discriminant = b * b - 4 * a * c;
  if(a==0 && b != 0){
    double root = -c / b;
    print("One real root: $root");
  }else if(a == 0 && b == 0){
    print("No equation");
  }else{
    if (discriminant > 0) {
        double root1 = (-b + sqrt(discriminant)) / (2 * a);
        double root2 = (-b - sqrt(discriminant)) / (2 * a);
        print("Two real roots: $root1 and $root2");
    } else if (discriminant == 0) {
        double root = -b / (2 * a);
        print("One real root: $root");
    } else {
        print("No real roots.");
    }
  }
}
