import 'package:primeiro_dart/user_class.dart' show User;

User populateClass(Map<String, String> data){
  String name = data['name'] ?? '';
  String password = data['password'] ?? '';
  String bornYear = data['bornYear'] ?? '0';
  String email = data['email'] ?? '';
  String points = data['points'] ?? '0,0';
  List<int> pointsConverted = points.split(',').map(int.parse).toList();

  return User(name, password, int.parse(bornYear), email, pointsConverted);
}

String calculate(int a, int b, String operation) {
  switch(operation) {
    case 'add':
      return (a + b).toString();
    case 'minus':
      return (a - b).toString();
    case 'multiply':
      return (a * b).toString();
    case 'divide':
      return (a ~/ b).toString();
    default:
      return 'Operador inválido';
  }
}