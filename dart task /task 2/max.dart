import 'dart:io';

void main() {
  print("the maximum number is : ");
  maximum();
}

void maximum() {
  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  int maxim = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > maxim) {
      maxim = numbers[i];
    }
  }

  print(maxim);
}
