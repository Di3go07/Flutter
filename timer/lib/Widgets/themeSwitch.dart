import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controller.dart';

//WIDGETS THEME SWITCH

class ThemeSwitch extends StatelessWidget{
  /* Cria um widget para o switch de alterar o tema da página */

  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(  
        alignment: Alignment.topRight,    
        child: Switch(
        value: AppController.instance.isDarkTheme, 
        onChanged: (value){
          AppController.instance.changeTheme(); //chama a função de mudar o estado do tema do app
        }
      )
    );
  }
}