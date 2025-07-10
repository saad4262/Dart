import 'dart:io';

void main() {
  print('Enter your name: ');
  String name = stdin.readLineSync()!;

  print('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);

  print('Enter your height: ');
  double height = double.parse(stdin.readLineSync()!);

  print('Are you a Flutter developer? (true/false): ');
  bool isDev = stdin.readLineSync()!.toLowerCase() == 'true';

  print('Enter your skills (comma separated): ');
  List<String> skills = stdin.readLineSync()!.split(',');

  print('Enter your city: ');
  String city = stdin.readLineSync()!;

  Map<String, String> bio = {'name': name, 'city': city};

  print('\n--- Your Info ---');
  print('Name: $name');
  print('Age: $age');
  print('Height: $height');
  print('Is Flutter Dev: $isDev');
  print('Skills: $skills');
  print('Bio Map: $bio');
}
