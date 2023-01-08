class Monster {
  String? name;
  int? hitPoints;
  Monster(String name, int hitPoints) {
    this.name = name;
    this.hitPoints = hitPoints;
  }
  void attacked(int damage) {
    hitPoints = hitPoints! - damage;
    print(hitPoints);
  }

  void defeated(int hitPoints) {
    if (hitPoints <= 0) {}
  }

  void showDialog() {}
}
