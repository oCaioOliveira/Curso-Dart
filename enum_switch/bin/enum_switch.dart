void main(List<String> arguments) {
  print(WeekDay.values);

  WeekDay day = WeekDay.sunday;

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

enum WeekDay { sunday, monday, tuesday, wednesday, thursday, friday, saturday }
