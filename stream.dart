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
