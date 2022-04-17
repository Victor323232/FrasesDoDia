
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
   home: Home() ,
    debugShowCheckedModeBanner: false,
  ));

}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Sem dor, sem ganho. Cale a boca e treine.",
    "Seu corpo pode suportar quase tudo. É a sua mente que você tem que convencer.",
    "O sucesso começa com autodisciplina.",
    "Coisas boas vêm para aqueles que suam.",
    "Um treino de uma hora é 4% do seu dia. Sem desculpas.",
    "Apresse esse músculo.",
    "Trabalhe duro em silêncio. Deixe o sucesso ser o seu barulho."

  ];
  var _fraseGerada = "Clique abaixo para gerar uma frase";
  void _gerarFrase(){
    var numeroSorteado = Random().nextInt( _frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.center,
                children:<Widget>[
                  Image.asset("images/logo1.png"),
                  Text(
                    _fraseGerada,
                      textAlign:TextAlign.justify,
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color:Colors.black

                      )
                  ),
                  ElevatedButton(
                    child: Text(
                      "Nova Frase",
                      style:TextStyle(
                          fontSize: 20,
                          color:Colors.white
                      ),
                    ) ,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.black
                    ),
                    onPressed: _gerarFrase,
                  )
                ]
            )
        ),
      ),

    );
  }
}
