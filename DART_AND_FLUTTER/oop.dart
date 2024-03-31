import 'dart:io';

// Interface
abstract class Study {
  void study();
}

// Base class
class Person {
  String name;

  Person(this.name);

  void sleep() {
    print('$name is sleeping');
  }
}

// Derived class implementing an interface and overriding a method
class Student extends Person implements Study {
  int rollNumber;

  Student(String name, this.rollNumber) : super(name);

  @override
  void sleep() {
    print('$name is sleeping on the desk');
  }

  @override
  void study() {
    print('$name is studying');
  }

  // Method demonstrating the use of a loop
  void studyHard() {
    for (int i = 1; i <= 5; i++) {
      print('$name is studying hard for $i hour(s)');
    }
  }
}

void main() {
  // Initializing an instance of Student with data from a file
  var file = File('student_data.txt');
  var lines = file.readAsLinesSync();

  var studentData = lines[0].split(',');
  var student = Student(studentData[0], int.parse(studentData[1]));

  student.studyHard(); // Method demonstrating the use of a loop
  student.study(); // Method from the implemented interface
}
