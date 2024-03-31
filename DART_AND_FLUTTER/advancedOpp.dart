// Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printInfo() {
    print('Student: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print('Teacher: $name, Age: $age, Subject: $subject');
  }
}

// School class
class School {
  void run() {
    // Creating instances of Student and Teacher
    var student = Student('Alice', 15, '9th');
    var teacher = Teacher('Mr. Smith', 40, 'Mathematics');

    // Calling methods to print information
    student.printInfo();
    teacher.printInfo();
  }
}

void main() {
  // Creating an instance of School and running it
  var school = School();
  school.run();
}
