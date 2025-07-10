// class Car {
//   String color;
//   String model;
//   String? name;

//   Car(this.color, this.model, this.name);

//   void displayInfo() {
//     print('Car Model: $model, Color: $color, Name: $name');
//   }
// }

// void main() {
//   Car mycar = Car("Red", "2005", "Honda City");
//   mycar.displayInfo();
// }

// Private class (use in same file)
class _Car {
  String _color;
  String _model;
  String? _name;

  _Car(this._color, this._model, this._name);

  String get color => _color;
  String get model => _model;
  String? get name => _name;

  set color(String value) => _color = value;
  set model(String value) => _model = value;
  set name(String? value) => _name = value;

  void displayInfo() {
    print('Car Model: $_model, Color: $_color, Name: $_name');
  }

  void _speed() {
    print('The car is speeding!');
  }
}

void main() {
  _Car myCar = _Car("Red", "2005", "Honda City");

  print("Color: ${myCar.color}");
  print("Model: ${myCar.model}");
  print("Name: ${myCar.name}");

  myCar.displayInfo();
  myCar._speed();
}
