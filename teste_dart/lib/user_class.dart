class User{
  //Atributos
  String name;
  String _password;
  int bornYear;
  String email;
  List<int> points;

  //Constructor
  User(this.name, this._password, this.bornYear, this.email, this.points);

  //Private atributes 
  String getPassword(){
    return _password;
  }

  //Método
  bool deMaior() {
    int currentYear = DateTime.now().year;
    int age = currentYear - bornYear;
    return age >= 18;
  }

  int media() {
    int contador = 0;
    for (int numero in points) {
      contador = contador + numero;
    }
    return contador ~/ points.length;
  }

  void changePassword(String password, String newPassword ){
    if (_password == password){
      _password = newPassword;
      print('Senha alterada!');
    } else {
      print('Senha anterior invalída, alteração negada');
    }
    return;
  }
}