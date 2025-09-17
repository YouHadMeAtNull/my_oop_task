import 'school.dart';
import 'plants.dart';
import 'animals.dart';

void main() {
  // --- School Demo ---
  print("=== School Demo ===");
  School student1 = School("Jay", "Computer Studies", 2);

  student1.displayInfo();

  student1.promote(); // Jay moves to year 3
  student1.changeDepartment("School of Engineering");

  student1.demote(); // Jay goes back to year 1

  student1.displayInfo();

  // --- Plants Demo ---
  print("\n=== Plants Demo ===");
  Plants plant1 = Plants("Mango Tree", 3, "Fruit Tree", 120.0);

  plant1.displayInfo();

  plant1.grow(5.0); // grows by 5 cm
  plant1.ageOneYear(); // plant gets older
  plant1.displayInfo();
// --- Animals Demo ---
print("\n=== Animals Demo ===");
Animals animal1 = Animals("Aspin", "Dog", 4, 18.5);

animal1.displayInfo();

// Show the breed using the getter
print("Breed: ${animal1.breed}");


// Feed and age
animal1.feed(2.0); // feed the animal
animal1.ageOneYear(); // animal gets older
animal1.displayInfo();

}
