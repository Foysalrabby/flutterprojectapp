import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return  ExtendHomescreen();
  }

}

class ExtendHomescreen extends State<Homescreen>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black54,
     body:Container(
       child: Text("hello"),
     ),
   );
  }

}
