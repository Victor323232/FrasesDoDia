
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.only(top:10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.center,
                children:<Widget>[
                  Image.asset("images/logo1.png"),
                  Text(
                      "Clique abaixo para gerar uma frase",
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
                    onPressed: (){},
                  )
                ]
            )
        ),
      ),

    );
  }
}
