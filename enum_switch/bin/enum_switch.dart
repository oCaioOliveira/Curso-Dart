void main(List<String> arguments) {
  print(WeekDay.values);

  WeekDay day = WeekDay.sunday;

  selectDay(day);

  List<String> destinations = [];
  String destination = "São Paulo";
  destinations.add(destination);
  destinations.add(destination);
  print(destinations);

  Set<String> visitedRegisters = <String>{};
  visitedRegisters = registerDestinatiion(destination, visitedRegisters);
  visitedRegisters = registerDestinatiion("Rio de Janeiro", visitedRegisters);
  visitedRegisters = registerDestinatiion("Recife", visitedRegisters);
  visitedRegisters = registerDestinatiion("Recife", visitedRegisters);
  visitedRegisters = registerDestinatiion("Rio de Janeiro", visitedRegisters);
  print(visitedRegisters);

  print(visitedRegisters.contains("Recife"));
  print(visitedRegisters.contains("Natal"));

  print("List of Destionations:");
  visitedRegisters.forEach((String destination) {
    print(destination);
  });
  // visitedRegisters.forEach((String destination) => print(destination)); ALTERNATIVE WAY

  Map<String, double> registerPrices = {};

  registerPrices["São Paulo"] = 100.00;
  registerPrices["Recife"] = 150.00;

  print(registerPrices);
  print(registerPrices["Recife"]);

  registerPrices.remove("Recife");

  print(registerPrices);
}

selectDay(Enum day) {
  switch (day) {
    case WeekDay.sunday:
      print('Today is Sunday');
      break;
    case WeekDay.monday:
      print('Today is Monday');
      break;
    case WeekDay.tuesday:
      print('Today is Tuesday');
      break;
    case WeekDay.wednesday:
      print('Today is Wednesday');
      break;
    default:
      print('Today is not a day of the week');
  }
}

Set<String> registerDestinatiion(String destination, Set<String> dataBase) {
  dataBase.add(destination);

  return dataBase;
}

enum WeekDay { sunday, monday, tuesday, wednesday, thursday, friday, saturday }
