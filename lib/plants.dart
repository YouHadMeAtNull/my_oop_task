import 'school.dart';

// Derived class Plants extends School
class Plants extends School {
  // Unique property
  String _plantType; // e.g., "Fruit Tree", "Vegetable", etc.

  // Constructor (using super to call parent constructor)
  Plants(String name, String department, int year, this._plantType)
      : super(name, department, year);

  // Getter
  String get plantType => _plantType;

  // Setter with validation
  set plantType(String value) {
    if (value.isNotEmpty) {
      _plantType = value;
    } else {
      print("Plant type cannot be empty.");
    }
  }

  // Unique method
  void grow() {
    print("$name's $_plantType project is thriving! 🌱");
  }

  // Override parent method (optional demo)
  @override
  void displayInfo() {
    super.displayInfo(); // keep parent behavior
    print("Plant Type: $_plantType");
  }
}
