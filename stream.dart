Stream<int> numberStream() async* {
  for (int i = 1; i <= 3; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  print("Number Stream:");
  await for (int value in numberStream()) {
    print(value);
  }
}

// Stream<List<int>> numberStream() async* {
//   List<int> numbers = [];

//   for (int i = 1; i <= 3; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     numbers.add(i); // Add number to list
//     yield List.from(numbers); // Yield a copy of the list
//   }
// }

// void main() async {
//   print("Number Stream:");
//   await for (List<int> value in numberStream()) {
//     print(value);
//   }
// }

// Stream<String> greetings() async* {
//   yield "Hello";
//   await Future.delayed(Duration(seconds: 1));
//   yield "Hi again!";
// }

// void main() async {
//   await for (String message in greetings()) {
//     print(message);
//   }
// }

// Stream<Map<String, String>> studentStream() async* {
//   Map<String, String> student = {
//     'name': 'Saad',
//     'grade': 'A',
//     'city': 'Lahore',
//   };

//   yield student; // Yield the initial map

//   await Future.delayed(Duration(seconds: 1));

//   // Update the map
//   student['grade'] = 'A+';
//   yield student; // Yield the updated map
// }

// void main() async {
//   await for (Map<String, String> student in studentStream()) {
//     print('Name: ${student['name']}');
//     print('Grade: ${student['grade']}');
//     print('City: ${student['city']}');
//     print('---');
//   }
// }
