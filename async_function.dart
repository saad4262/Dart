Future<void> myFunction() async {
  // do something
  await Future.delayed(Duration(seconds: 5));
  print('Done');
}

void main() async {
  print('Starting...');
  await myFunction();
  print('Finished!');
}
