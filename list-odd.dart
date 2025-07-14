// import 'dart:io';

// List<int> filterOddNumbers(List<int> numbers) {
//   List<int> oddNumbers = [];
//   for (int i in numbers) {
//     if (i % 2 != 0) {
//       oddNumbers.add(i);
//     }
//   }
//   return oddNumbers;
// }

// List<int> InputListNumbers() {
//   List<int> numbers = [];
//   int range;

//   print("Enter the range of List Numbers: ");
//   range = int.parse(stdin.readLineSync()!);

//   for (int i = 0; i < range; i++) {
//     print("Enter a $i number: ");
//     int input = int.parse(stdin.readLineSync()!);

//     numbers.add(input);
//   }
//   return numbers;
// }

// void main() {
//   List<int> OddNumbers = [];
//   // List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   List<int> numbers = [];
//   // int range;

//   // print("Enter the range of List Numbers: ");
//   // range = int.parse(stdin.readLineSync()!);

//   // for (int i = 0; i < range; i++) {
//   //   print("Enter a $i number: ");
//   //   int input = int.parse(stdin.readLineSync()!);

//   //   numbers.add(input);
//   // }

//   // // for (int i = 0; i < numbers.length; i++) {
//   // //   if (numbers[i] % 2 != 0) {
//   // //     OddNumbers.add(numbers[i]);
//   // //   }
//   // }
//   numbers = InputListNumbers();
//   print("List of Numbers: $numbers");

//   OddNumbers = filterOddNumbers(numbers);

//   print("List of Filter Odd Numbers");

//   print("Odd Numbers: $OddNumbers");
// }

import 'dart:io';

List<int> filterOddNumbers(List<int> numbers) {
  List<int> oddNumbers = [];
  for (int i in numbers) {
    if (i % 2 != 0) {
      oddNumbers.add(i);
    }
  }
  return oddNumbers;
}

List<int> filterEvenNumbers(List<int> numbers) {
  List<int> evenNumbers = [];
  for (int i in numbers) {
    if (i % 2 == 0) {
      evenNumbers.add(i);
    }
  }
  return evenNumbers;
}

List<int> inputListNumbers() {
  List<int> numbers = [];
  int range;

  print("Enter the range of List Numbers : ");
  range = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < range; i++) {
    print("Enter a number at $i index : ");
    int input = int.parse(stdin.readLineSync()!);

    numbers.add(input);
  }
  return numbers;
}

void main() {
  List<int> filterNumbers = [];
  List<int> numbers = [];

  numbers = inputListNumbers();
  print("List of Numbers: $numbers");

  print(
    "Select an option:\n"
    "Press 1 for Filter Even Numbers List\n"
    "Press 2 for Filter Odd Numbers list",
  );
  int select = int.parse(stdin.readLineSync()!);

  filterNumbers =
      (select == 1) ? filterEvenNumbers(numbers) : filterOddNumbers(numbers);
  print(filterNumbers);
}
