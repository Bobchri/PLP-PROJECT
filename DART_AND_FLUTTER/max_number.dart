void main() {
  List<int> numbers = [10, 5, 7, 20, 15];
  int largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  print('The largest number is: $largest');
}
