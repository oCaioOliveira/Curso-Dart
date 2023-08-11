void main() {
  String name = "Apple";
  String color = "Red";
  int daysFromHarvest = 10;
  double weight = 5.5;
  bool isMature = getIsMature(daysFromHarvest);
  int daysToMature = calculateDaysToMature(daysFromHarvest);
  showMature(name, isMature,
      daysFromHarvest: daysFromHarvest,
      daysToMature: daysToMature,
      color: color);

  Fruit fruit = Fruit(
      name: name,
      color: color,
      weight: weight,
      daysFromHarvest: daysFromHarvest,
      daysToMature: daysToMature);

  print(fruit.name);
  print(fruit);
  print(fruit.fruitIsMature());

  Aliment aliment = Aliment(name: name, color: color, weight: weight);

  aliment.separateIngredients();
  fruit.separateIngredients();
}

int calculateDaysToMature(int daysFromHarvest) {
  return 30 - daysFromHarvest;
}

class Aliment implements Cake {
  String name;
  String color;
  double weight;

  Aliment({required this.name, required this.color, required this.weight});

  @override
  void separateIngredients() {
    print('Separate ingredients');
  }

  @override
  void makeDough() {
    print('Do dough');
  }

  @override
  void bake() {
    print('bake in the oven');
  }
}

class Fruit extends Aliment implements Cake {
  int daysFromHarvest;
  int daysToMature;
  bool? isMature;

  Fruit(
      {required name,
      required color,
      required weight,
      required this.daysFromHarvest,
      required this.daysToMature,
      this.isMature})
      : super(name: name, color: color, weight: weight);

  bool fruitIsMature() {
    if (daysFromHarvest >= 30) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void separateIngredients() {
    print('Peel fruit');
    super.separateIngredients();
  }
}

abstract class Cake {
  void separateIngredients();

  void makeDough();

  void bake();
}

showMature(String name, bool isMature,
    {required int daysFromHarvest,
    required int daysToMature,
    String? color,
    bool? key = true}) {
  if (color != null) {
    print(
        "The $name with color $color has $daysFromHarvest days from harvest, is it mature ? $isMature\n"
        "It will be mature in $daysToMature days");
  } else {
    print(
        "The $name has $daysFromHarvest days from harvest, is it mature ? $isMature\n"
        "It will be mature in $daysToMature days");
  }
}

bool getIsMature(int daysFromHarvest) {
  if (daysFromHarvest >= 30) {
    return true;
  } else {
    return false;
  }
}
