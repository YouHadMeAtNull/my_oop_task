class Animals {
  // Private attributes
  String _species;
  int _age;
  double _weight;
  String _breed;

  // ✅ Constructor with 4 parameters (breed, species, age, weight)
  Animals(this._breed, this._species, this._age, this._weight);

  // Getter and setter for breed
  String get breed => _breed;
  set breed(String newBreed) {
    if (newBreed.isNotEmpty) {
      _breed = newBreed;
    } else {
      throw Exception("Breed cannot be empty.");
    }
  }

  // Getter and setter for species
  String get species => _species;
  set species(String newSpecies) {
    if (newSpecies.isNotEmpty) {
      _species = newSpecies;
    } else {
      throw Exception("Species cannot be empty.");
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

  // Getter and setter for weight
  double get weight => _weight;
  set weight(double newWeight) {
    if (newWeight >= 0) {
      _weight = newWeight;
    } else {
      throw Exception("Weight cannot be negative.");
    }
  }

  // Method: Feed the animal (increase weight)
  void feed(double kg) {
    if (kg > 0) {
      _weight += kg;
      print("$_species was fed $kg kg. New weight: $_weight kg, breed: $_breed.");
    } else {
      print("Feed amount must be positive.");
    }
  }

  // Method: Age the animal by 1 year
  void ageOneYear() {
    _age += 1;
    print("$_species is now $_age years old.");
  }


  // Display info
  void displayInfo() {
    print("Animal: $_breed, $_species, Age: $_age years, Weight: $_weight kg");
  }
}
