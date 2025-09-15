import 'person.dart';

void main() {
  // Create a Person object
  Person p1 = Person("Jay", 16, "Male");

  // Show introduction
  p1.introduce();

  // Change name with setter (valid)
  p1.name = "Jay Villa";
  print("Updated name: ${p1.name}");

  // Try invalid age (validation should reject it)
  p1.age = -5; // Invalid
  print("Current age after invalid set: ${p1.age}");

  // Celebrate birthday (method changes the attribute)
  p1.celebrateBirthday();

  // Another introduction after changes
  p1.introduce();
}
