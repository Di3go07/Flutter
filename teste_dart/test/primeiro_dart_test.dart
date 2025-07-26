import 'package:primeiro_dart/user_functions.dart';
import 'package:primeiro_dart/user_class.dart';
import 'package:test/test.dart';

void main() {
  test('deMaior() should return true when user age is 18 or older', () {
    final user = User('Teste', 'Galo2013', 2007, 'teste@email.com', [10, 20, 30]);
    expect(user.deMaior(), true);
  });

  test('media() should return the correct average of user points', () {
    final user = User('Teste', 'Galo2013', 2007, 'teste@email.com', [10, 20, 30]);
    expect(user.media(), 20);
  });

  test('getPassword() should return the current value of the user\'s private password attribute', () {
    final user = User('Teste', 'Galo2013', 2007, 'teste@email.com', [10, 20, 30]);
    expect(user.getPassword(), equals("Galo2013"));
  });

  test('changePassword() should update the user password only when the correct current password is provided', () {
    final user = User('Teste', 'Galo2013', 2007, 'teste@email.com', [10, 20, 30]);
    user.changePassword("Galo2013", "Di3go2007");
    expect(user.getPassword(), equals("Di3go2007"));
  });

  test('calculate() should return the sum of two numbers when operator is "add"', () {
    expect(calculate(10, 2, 'add'), '12');
  });
  test('calculate() should return the difference of two numbers when operator is "minus"', () {
    expect(calculate(10, 2, 'minus'), '8');
  });
  test('calculate() should return the product of two numbers when operator is "multiply"', () {
    expect(calculate(10, 2, 'multiply'), '20');
  });
  test('calculate() should return the quotient of two numbers when operator is "divide"', () {  
    expect(calculate(10, 2, 'divide'), '5');
  });
  test('calculate() should return an error message when operator is invalid', () {
    expect(calculate(10, 2, 'invalid'), 'Operador inválido');
  });
}
