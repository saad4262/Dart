import 'dart:io';
import 'dart:math';

abstract class Identifiable {
  String get id;
}

class Student extends Identifiable {
  String? name;

  @override
  String id;

  Student({required this.id, this.name});

  List<Map<String, String>> addStudent(List<Map<String, String>> students) {
    print('Enter Student ID:');
    id = stdin.readLineSync()!;

    bool exists = students.any((student) => student['id'] == id);

    if (exists) {
      print("Student with ID $id already exists");
    } else {
      print('Enter Student Name:');
      String name = stdin.readLineSync()!;
      students.add({'id': id, 'name': name});
      print("Student added successfully");
    }

    return students;
  }
}

class Marks extends Student implements Identifiable {
  // @override
  // final String id;

  String? subject;
  String? course_id_main;

  double? score;

  Marks({required String id, required String name, this.subject, this.score})
    : super(id: id, name: name);

  String getGrade(double score) {
    if (score >= 90) return 'A+';
    if (score >= 80) return 'A';
    if (score >= 70) return 'B';
    if (score >= 60) return 'C';
    if (score >= 50) return 'D';
    return 'F';
  }

  void addMarks(
    List<Map<String, dynamic>> grades,
    List<Map<String, String>> courses,
  ) {
    print('Enter Course ID:');
    String course_id = stdin.readLineSync()!;
    var courseExists = courses.any((c) => c['course_id'] == course_id);
    if (!courseExists) {
      print("Course ID not found. Please add the course first.");
      return;
    }

    course_id_main = course_id;
    // print('Enter Subject Name:');
    // String subject = stdin.readLineSync()!;
    print('Enter Score:');
    double score = double.parse(stdin.readLineSync()!);

    grades.add({
      'id': id,
      'name': name,
      'course_id': course_id,
      'subject': subject,
      'score': score,
    });
  }

  List<Map<String, String>> addCourses(List<Map<String, String>> courses) {
    print("How many courses do you want to add?");
    int count = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < count; i++) {
      print("Enter Course ID:");
      String courseId = stdin.readLineSync()!;

      bool exists = courses.any((c) => c['course_id'] == courseId);
      if (exists) {
        print("Course ID $courseId already exists, skipping...");
        continue;
      }

      print("Enter Course Name:");
      String courseName = stdin.readLineSync()!;

      courses.add({'course_id': courseId, 'course_name': courseName});
      print("Course added successfully");
    }

    return courses;
  }
}

void main() {
  List<Map<String, String>> students = [];
  List<Map<String, dynamic>> grades = [];
  List<Map<String, String>> courses = [];

  int choice;

  do {
    print("\nChoose an option:");
    print("1. Add student");
    print("2. Add Courses");
    print("3. Add Marks");
    print("4. View students");
    print("5. View Students Result");
    print("6. View Courses");
    print("0. Exit");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      Student s = Student(id: '');
      students = s.addStudent(students);
    } else if (choice == 2) {
      Marks m = Marks(id: '', name: '');

      courses = m.addCourses(courses);
    } else if (choice == 3) {
      print("Enter student ID to add marks:");
      String id = stdin.readLineSync()!.trim();
      var student = students.firstWhere((s) => s['id'] == id, orElse: () => {});
      if (student.isEmpty) {
        print("Error Student with ID $id not found.");
      } else {
        String name = student['name']!;
        Marks m = Marks(id: id, name: name);
        m.addMarks(grades, courses);
      }
    } else if (choice == 4) {
      if (students.isEmpty) {
        print("No students found.");
      } else {
        print("List of Students:");
        for (var student in students) {
          print("ID: ${student['id']}, Name: ${student['name']}");
        }
      }
    } else if (choice == 5) {
      if (grades.isEmpty) {
        print("No marks found.");
      } else {
        print("Enter Student ID to view marks:");

        String searchId = stdin.readLineSync()!.trim();
        var filteredResult = grades.where((g) => g['id'] == searchId).toList();

        print("List of Marks:");
        for (var grade in filteredResult) {
          double score = grade['score'];
          String gradeLetter = Marks(
            id: grade['id'],
            name: grade['name'],
          ).getGrade(score);

          String courseId = grade['course_id'];
          String courseName =
              courses.firstWhere(
                (c) => c['course_id'] == courseId,
                orElse: () => {'course_name': 'Unknown'},
              )['course_name']!;

          print(
            "ID: ${grade['id']}, Name: ${grade['name']}, Course: ${grade['course_id']}, Course: $courseName, Score: $score, Grade: $gradeLetter",
          );
        }
      }
    } else if (choice == 6) {
      if (courses.isEmpty) {
        print("No courses found.");
      } else {
        print("List of Courses:");
        for (var course in courses) {
          print(
            "Course ID: ${course['course_id']}, Name: ${course['course_name']}",
          );
        }
      }
    } else if (choice != 0) {
      print("Invalid choice, please try again.");
    }
  } while (choice != 0);

  print("Exiting program.");
}
