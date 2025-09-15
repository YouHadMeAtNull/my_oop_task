// lib/main.dart
import 'school.dart';

void main() {
  School student1 = School("Jay", "Computer Science", 2);

  student1.displayInfo();

  student1.promote(); // Jay moves to year 3
  student1.changeDepartment("School of Engineering");

  student1.demote(); // Jay goes back to year 1

  student1.displayInfo();
}
