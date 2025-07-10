// abstract class Printable {
//   void printData() {
//     print("adkjkasd");
//   }

//   // ❌ No body
// }

// class Document implements Printable {
//   @override
//   void printData() {
//     print("Printing document..."); // ✅ You define the body here
//   }
// }

// void main() {
//   Document doc = Document();
//   doc.printData(); // Output: Printing document...
// }

class Printable {
  void printData() {
    print("This is a printable object.");
  }

  // No body — this acts like an interface method
}

class Document implements Printable {
  @override
  void printData() {
    print("Printing document...");
  }
}

class Invoice implements Printable {
  @override
  void printData() {
    print("Printing invoice...");
  }
}

void main() {
  Printable doc = Document();
  Printable invoice = Invoice();

  doc.printData(); // Output: Printing document...
  invoice.printData(); // Output: Printing invoice...
}
