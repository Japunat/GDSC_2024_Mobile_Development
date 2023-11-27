import 'dart:io';

void main() {
  print("the minimum number is : ");
  minimum();
}

void minimum() {
  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  int minim = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] < minim) {
      minim = numbers[i];
    }
  }

  print(minim);
}
