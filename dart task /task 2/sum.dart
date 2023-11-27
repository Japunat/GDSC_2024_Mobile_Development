import 'dart:io';

void main() {
  print("the sum of the number is : ");
  sum();
}

void sum() {
  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }

  print(sum);
}



   
