class User {
  String name;
  static User? _cachedUser;

  // 👇 Factory constructor
  factory User(String name) {
    if (_cachedUser != null) {
      print("Returning existing user");
      return _cachedUser!;
    } else {
      print("Creating new user");
      _cachedUser = User._internal(name);
      return _cachedUser!;
    }
  }

  // 👇 Private constructor
  User._internal(this.name);

  void greet() {
    print("Hi, I am $name");
  }
}

void main() {
  var u1 = User("Saad");
  u1.greet();

  var u2 = User("Ahmed");
  u2.greet();

  print(identical(u1, u2)); // true
}
