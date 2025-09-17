// lib/main.dart

import 'school.dart';
import 'plants.dart';
import 'animals.dart';
import 'hero.dart'; // ✅ Import updated Hero class

void main() {
  // --- School Demo ---
  print("=== School Demo ===");
  School student1 = School("Jay", "Computer Studies", 2);
  student1.displayInfo();
  student1.promote();
  student1.changeDepartment("School of Engineering");
  student1.demote();
  student1.displayInfo();

  // --- Plants Demo ---
  print("\n=== Plants Demo ===");
  Plants plant1 = Plants("Mango Tree", 3, "Fruit Tree", 120.0);
  plant1.displayInfo();
  plant1.grow(5.0);
  plant1.ageOneYear();
  plant1.displayInfo();

  // --- Animals Demo ---
  print("\n=== Animals Demo ===");
  Animals animal1 = Animals("Aspin", "Dog", 4, 18.5);
  animal1.displayInfo();
  print("Breed: ${animal1.breed}");
  animal1.feed(2.0);
  animal1.ageOneYear();
  animal1.displayInfo();

  // --- Hero Demo ---
  print("\n=== Hero Demo ===");
  Hero hero1 = Hero("Nana", 5, 30); // ✅ Hero with name, level, damage

  hero1.displayInfo();         // Show initial state
  hero1.levelUp();             // Level up
  hero1.increaseDamage(10);    // Increase damage

  // Try setting invalid inputs (will silently fail — no warnings)
  hero1.name = "";             // Won’t change
  hero1.level = -1;            // Won’t change
  hero1.damage = -20;          // Won’t change

  hero1.displayInfo();         // Final state (should be unchanged from before invalid inputs)
}
