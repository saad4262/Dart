class Students {
  String name = "Muhammad Saad Nadeem";

  // Students(this.name);

  // Students._private(this.name);
  // display();

  // void set name1(String? name) {
  //   this.name = name;
  // }

  // String? get name1 {
  //   return name;
  // }

  // static Students instance(String? name) {
  //   return Students._private(name);
  // }

  void _func1() {
    print("This is a private function");
  }

  void display() {
    print("Student Name: $name");
    _func1();
    // Students._private(name);
  }
}

class Saad extends Students {
  String name = "Muhammad";

  // Saad(this.name2) : super("Muhammad");

  void display() {
    print(super.name);
    // print("Saad's Name: $name");
    _func1();
  }
}

void main() {
  // Students student = Students("Muhammad Saad Nadeem");
  Saad s = Saad();

  s.display();
  // Saad s = Saad("adskjskja");
  // s.display();
}
