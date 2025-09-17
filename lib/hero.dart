// lib/hero.dart

class Hero {
  // Private fields
  String _name;
  int _level;
  int _damage;

  // Constructor
  Hero(String name, int level, int damage)
      : _name = name,
        _level = level,
        _damage = damage;

  // Getter and Setter for name
  String get name => _name;
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }

  // Getter and Setter for level
  int get level => _level;
  set level(int value) {
    if (value > 0) {
      _level = value;
    }
  }

  // Getter and Setter for damage
  int get damage => _damage;
  set damage(int value) {
    if (value >= 0) {
      _damage = value;
    }
  }

  // Method: display hero's info
  void displayInfo() {
    print("Name: $_name, Level: $_level, Damage: $_damage");
  }

  // Method: increase level
  void levelUp() {
    _level += 1;
    print("$_name has leveled up to $_level!");
  }

  // Method: increase damage
  void increaseDamage(int amount) {
    if (amount > 0) {
      _damage += amount;
      print("$_name's damage increased by $amount. New damage: $_damage");
    }
  }
}
