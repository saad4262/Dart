// void main() {
//   int? age;
//   print(age);
// }

class User {
  String name;
  User(this.name);
}

void main() {
  User? user = User("Saad");

  print(user.name); // Using it

  user = null; // ❌ Not needed anymore

  // Dart GC will eventually remove the User("Saad") object from memory
}
