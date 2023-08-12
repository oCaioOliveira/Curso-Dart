void main() {
  String name = 'Caio César';
  int age = 21;
  double weight = 85.5;
  bool isStudent = true;
  print('My name is $name, '
      'I\'m $age years old.\n'
      'My weight is $weight kg. '
      'Do I study? $isStudent\n');

  List<String> namesList = ['Caio', 'César', 'Santos'];
  print(namesList);

  List<dynamic> person = [88, 'Caio', true, 1.75];
  print(person);
  print('My name is ${person[1]}.');

  const double pi = 3.14;
  print(pi);
  final int date;
  date = DateTime.now().day;
  print(date);
  var motherAge = 45;
  motherAge = 46;
  print(motherAge);

  bool ofLegalAge = false;
  if (age >= 21) {
    ofLegalAge = true;
  } else {
    ofLegalAge = false;
  }
  print('I`m a person of legal age? $ofLegalAge\n');

  for (int i = 0; i < 5; i++) {
    print(i);
  }

  while (age < 25) {
    print(age);
    age++;
  }
}
