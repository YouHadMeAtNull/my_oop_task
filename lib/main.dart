// lib/main.dart
import 'school.dart';
import 'plants.dart'; // 👈 import your derived class

void main() {
  // --- School Demo ---
  School student1 = School("Jay", "Computer Science", 2);

  student1.displayInfo();

  student1.promote(); // Jay moves to year 3
  student1.changeDepartment("School of Engineering");

  student1.demote(); // Jay goes back to year 1

  student1.displayInfo();

  // --- Plants Demo ---
  print("\n--- Plants Demo ---");
  Plants plant1 = Plants("Mango Tree", 3, "Fruit Tree", 120.0);

  plant1.displayInfo();
  plant1.grow(5.0); // grows by 5 cm
  plant1.displayInfo();
}
