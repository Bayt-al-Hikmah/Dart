import "dart:io";
import "dart:math";
void main(){
stdout.write("Enter number ");
int number = int.parse(stdin.readLineSync()!);
stdout.write("Is $number prime: ${is_prime(number)}");
}

bool is_prime(int n){
    
    for(int i = 2; i < sqrt(n); i++){
        if (n % i == 0) return false;
    }
    return n > 1 && true;
}