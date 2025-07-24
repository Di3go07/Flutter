import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home.dart';
import 'package:flutter_application_1/app_controller.dart';


//PERSONALIZAÇÃO
class AppWidget extends StatelessWidget{
  /* 
    Essa classe tem como função colocar a personalização base do site, como seu style e sua página principal.
    Ela é chamada pelo runApp() e chama a função da home que guiara o usuário pelo seu aplicativo.
  */
  
  const AppWidget({super.key});   //Construtor necessário para todas as classes

  @override
  Widget build(BuildContext context){ //Widget build cria um novo elemento no app
    return AnimatedBuilder(
      animation: AppController.instance, //listner das notificações feitas pelo controller
      builder: (context, child) { //armazena as características do app
        return MaterialApp( //MaterialApp() é a raiz do projeto e define suas propriedades básicas
          home: HomePage(), //página inicial

          theme: ThemeData( //tema do app - a identidade visual
            brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,

            colorScheme: ColorScheme.fromSeed( //define o esquema de cores do app
              seedColor: Colors.blue, 
              brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
            ),

            appBarTheme: AppBarTheme( //personaliza a AppBar de acordo com o esquema de cores
              backgroundColor: ColorScheme.fromSeed(
                seedColor: Colors.blue,
                brightness: AppController.instance.isDarkTheme ? Brightness.light : Brightness.dark,
              ).primary,
              foregroundColor:  AppController.instance.isDarkTheme ? Colors.white : Colors.black,
            ),

          )
        );
      }
    );
  }
}

