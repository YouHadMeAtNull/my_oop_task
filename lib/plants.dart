class Plants {
  // Private attributes
  String _name;
  int _age;
  String _type;
  double _height;

  // Constructor
  Plants(this._name, this._age, this._type, this._height);

  // Getter and setter for name
  String get name => _name;
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    } else {
      throw Exception("Plant name cannot be empty.");
    }
  }

  // Getter and setter for age
  int get age => _age;
  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    } else {
      throw Exception("Age cannot be negative.");
    }
  }

  // Getter and setter for type
  String get type => _type;
  set type(String newType) {
    if (newType.isNotEmpty) {
      _type = newType;
    } else {
      throw Exception("Plant type cannot be empty.");
    }
  }

  // Getter and setter for height
  double get height => _height;
  set height(double newHeight) {
    if (newHeight >= 0) {
      _height = newHeight;
    } else {
      throw Exception("Height cannot be negative.");
    }
  }

  // Method: Grow the plant by a certain amount
  void grow(double cm) {
    if (cm > 0) {
      _height += cm;
      print("$_name grew by $cm cm. New height: $_height cm.");
    } else {
      print("Growth must be positive.");
    }
  }

  // Method: Age the plant by 1 year
  void ageOneYear() {
    _age += 1;
    print("$_name is now $_age years old.");
  }

  // Display info
  void displayInfo() {
    print("Plant: $_name, Type: $_type, Age: $_age years, Height: $_height cm");
  }
}
