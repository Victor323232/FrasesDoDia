
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
      body: Container(
         padding: EdgeInsets.only(top:10),
         child: Column(
           children:<Widget>[

           ]
         )
      ),

    );
  }
}
