class Point {
  final int x;
  final int y;

  const Point(this.x, this.y); // const constructor
}

void main() {
  const p1 = Point(3, 4);
  const p2 = Point(5, 6);

  // print(p1 == p2); // true (same instance)
  print(p1.x);
  print(p1.y);
  print(p2.x);
  print(p2.y);
}
