import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/themeSwitch.dart';

//PÁGINA HOME
class HomePage extends StatefulWidget{
  /*
    A classe HomePage extende de StatefulWidget, o que permite uma atualização dinâmica de seus elementos. 
    Ela é dependende de outra classe para atualizar seus estados, a função da classe atual é apenas a de
    construir o método para criar o estado mutável   
  */

  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}
class HomePageState extends State<HomePage>{
  /*
    A classe HomePageState armazena a variável e a build da página
  */

  //states
  int count = 0;
  String mensagem = '';
  bool isRuning = false;
  bool isDarkTheme = false;

  //funções
  void iniciarTimer() async {
      setState(() {
        isRuning = true;
      });

      do {
        await Future.delayed(Duration(seconds: 1));
        setState(() {
          count--;
        });
      } while (count > 0);
    
      setState(() {
        mensagem = 'Contagem finalizada';
      });

      await Future.delayed(Duration(seconds: 3));

      setState(() {
        mensagem = '';
        isRuning = false;
      });
  }

  @override
  Widget build(BuildContext context){ //constroi o elemento gráfico da página Home
    return Scaffold(

      //parâmetro para criação de uma navbar
      appBar: 
        AppBar( 
          leading: Icon(Icons.access_alarm),
          title: Text('TIMER'),
          actions: [ //armazena widgets para a navbar
            ThemeSwitch()
          ], 
        ),
      
      //parâmetro para a estruturação de um body
      body: 
        Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(child: Text('Adicione segundos ao seu timer')),
              Padding( 
                padding: EdgeInsets.all(12.0),
                child: Center(child: Text('$count', style: TextStyle(fontSize: 50, )))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: ( () {
                      if(!isRuning){
                        setState(() { //altera o state da página
                          count--;            
                        });   
                      }             
                    }), 
                    child: Icon(Icons.remove)
                  ),
                  
                  TextButton(
                    onPressed: ( () {
                      if (!isRuning){
                        setState(() { 
                          count++;            
                        }); 
                      }               
                    }), 
                    child: Icon(Icons.add)
                  ),
                ],
              ),
              Align(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,            
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: !isRuning && count > 0 ? iniciarTimer : null,
                  child: Text('Iniciar', style: TextStyle(fontSize: 18),)
                )
              ),
              Center(child:  Text(mensagem, style: TextStyle(color: Colors.red))),
            ],
          ),
        ),
    );
  }
}

