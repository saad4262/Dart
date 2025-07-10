void main() {
  // Create a map of student info
  Map<String, String> student = {
    'name': 'Saad',
    'grade': 'A',
    'city': 'Lahore',
  };

  // Print the whole map
  print(student);

  // Access a value by key
  print('Name: ${student['name']}');
  print('Grade: ${student['grade']}');
  print('City: ${student['city']}');
}
