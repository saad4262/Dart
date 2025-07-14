// class Point {
//   int x, y;

//   Point(this.x, this.y);

//   Point operator +(Point other) {
//     return Point(this.x + other.x, this.y + other.y);
//   }
// }

// void main() {
//   Point p1 = Point(1, 2);
//   Point p2 = Point(3, 4);

//   Point result = p1 + p2; // 👈 Operator overloading

//   print("Result: ${result.x}, ${result.y}");
// }
// class Car {
//   static int totalCars = 0;

//   Car() {
//     totalCars++;
//   }
// }

// void main() {
//   Car();
//   Car();
//   print(Car.totalCars);
// }

void main() {
  List<int> nums = [1, 2, 3];
  List<int> nums2 = nums.toList();
  nums2[0] = 99;
  print(nums2);
  print(nums);
}
