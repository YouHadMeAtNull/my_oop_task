class Person {
  // Private field (sensitive data)
  String _name;
  int _age;
  String gender;

  // Constructor
  Person(this._name, this._age, this.gender);

  // Getter for name
  String get name => _name;

  // Setter for name with validation
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    } else {
      print("Name cannot be empty!");
    }
  }

  // Getter for age
  int get age => _age;

  // Setter for age with validation
  set age(int newAge) {
    if (newAge >= 0 && newAge <= 120) {
      _age = newAge;
    } else {
      print("Invalid age! Must be between 0 and 120.");
    }
  }

  // Method 1: celebrate birthday (changes age)
  void celebrateBirthday() {
    if (_age < 120) {
      _age++;
      print("Happy Birthday $_name! You are now $_age years old.");
    } else {
      print("$_name has reached maximum age limit!");
    }
  }

  // Method 2: introduce person
  void introduce() {
    print("Hello, my name is $_name. I am $_age years old and I identify as $gender.");
  }
}
