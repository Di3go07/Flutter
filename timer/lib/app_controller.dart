import 'package:flutter/material.dart';

class AppController extends ChangeNotifier{
  /*
    A classe AppController armazena as regras de negócio do aplicativo e permite as páginas comunicarem
    entre si para atualizarem variáveis globais do projeto e gerenciar atualizações dinâmicas.
  */

  static AppController instance = AppController(); //cria um objeto da classe que pode ser modificado

  //Theme state
  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners(); //altera todas as instâncias do objeto
  }
}