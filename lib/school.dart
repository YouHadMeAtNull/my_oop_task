// lib/school.dart

class School {
  // Private attributes
  String _name;
  String _department;
  int _yearLevel;

  // Constructor
  School(this._name, this._department, this._yearLevel);

  // Getter and setter for name
  String get name => _name;
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    } else {
      throw Exception("Name cannot be empty.");
    }
  }

  // Getter and setter for department
  String get department => _department;
  set department(String newDepartment) {
    if (newDepartment.isNotEmpty) {
      _department = newDepartment;
    } else {
      throw Exception("Department cannot be empty.");
    }
  }

  // Getter and setter for yearLevel
  int get yearLevel => _yearLevel;
  set yearLevel(int newYear) {
    if (newYear > 0 && newYear <= 12) {
      _yearLevel = newYear;
    } else {
      throw Exception("Year level must be between 1 and 12.");
    }
  }

  // Method: Promote to next year
  void promote() {
    if (_yearLevel < 12) {
      _yearLevel += 1;
      print("$name promoted to year $_yearLevel.");
    } else {
      print("$name is already in the final year.");
    }
  }

  // Method: Demote to previous year
  void demote() {
    if (_yearLevel > 1) {
      _yearLevel -= 2;
      print("$name demoted to year $_yearLevel.");
    } else {
      print("$name is already in the first year.");
    }
  }

  // Method: Change department
  void changeDepartment(String newDept) {
    if (newDept.isNotEmpty) {
      _department = newDept;
      print("$name shifted to $_department.");
    } else {
      print("Invalid department name.");
    }
  }

  // Display info
  void displayInfo() {
    print("Student: $_name, Department: $_department, Year Level: $_yearLevel");
  }
}
