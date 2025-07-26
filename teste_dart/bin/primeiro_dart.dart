import 'package:primeiro_dart/user_functions.dart' as user_functions;
import 'package:primeiro_dart/user_class.dart' show User;

//data extracted 
Map<String, String> data = {
  'name':'Diego', 
  'password':'Galo2013',
  'bornYear':'2007', 
  'email':'diego.dpab@gmail.com',
  'points':'50, 60, 40, 65, 60, 80, 70'
};

void main() {
  //Manipulate Class
  //the class User recieves the datas extractede
  User user = user_functions.populateClass(data);

  if (user.deMaior()) {
    print('${user.name} é maior de idade!');
    print('Sua media de pontuação é ${user.media()}');
  } else {
    print('${user.name} é maior de idade');
  }

  user.changePassword("Galo2013", "Di3go2007");

  //Math operations
  int a = 10;
  int b = 1;
  print("===OPERAÇÕES de $a===");
  do {
    print('$a + $b = ${user_functions.calculate(a, b, 'add')}');
    print('$a - $b = ${user_functions.calculate(a, b, 'minus')}');
    print('$a * $b = ${user_functions.calculate(a, b, 'multiply')}');
    print('$a / $b = ${user_functions.calculate(a, b, 'divide')}');
    print('--------------------------------');

    b++;
  } while (b <= 3);
}
