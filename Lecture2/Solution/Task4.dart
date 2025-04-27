void main() {
  // 1
  int number = 7;
  if (number % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }

  // 2
  int grade = 78;
  if (grade >= 80) {
    print("A+");
  } else if (grade >= 75) {
    print("A");
  } else if (grade >= 70) {
    print("A-");
  }else if (grade >= 65) {
    print("B+");
  }else if (grade >= 60) {
    print("B");
  }else if (grade >= 55) {
    print("B-");
  }else if (grade >= 50) {
    print("C+");
  }else if (grade >= 45) {
    print("C");
  }else if (grade >= 40) {
    print("D");
  }else{
    print("F");
  }

  // 3
  int temp = 28;
  if (temp > 30) {
    print("Wear shorts");
  } else if (temp >= 20) {
    print("T-shirt weather");
  } else {
    print("Bring a jacket");
  }
}
