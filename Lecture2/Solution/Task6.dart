import 'dart:io';
import 'dart:math';
void main(){
  // 1
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  int fact = 1;
  int i = 1;

  while (i <= num) {
    fact *= i;
    i++;
  }
  print("Factorial: $fact");

  // 2
  stdout.write("Enter start number: ");
  int start = int.parse(stdin.readLineSync()!);
  stdout.write("Enter end number: ");
  int end = int.parse(stdin.readLineSync()!);
  for (int i = start; i <= end; i++) {
    bool isPrime = true;
    if (i < 2) continue;
    for (int j = 2; j <= sqrt(i); j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) print(i);
  }
}
