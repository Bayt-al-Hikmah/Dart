import "dart:io";
void main(){
    stdout.write("Enter number: ");
    int number = int.parse(stdin.readLineSync()!);
    stdout.write("$number on binary is ${to_binary(number)}");
}

int to_binary(int n){
    if (n == 0) return 0;
    return n % 2 + 10 * to_binary(n ~/ 2);
} 