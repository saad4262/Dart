Future<String> getUser() async {
  await Future.delayed(Duration(seconds: 2));
  return "👤 User: Saad";
}

void main() async {
  print("Fetching user...");
  String user = await getUser();
  print(user);
}
