
import 'dart:html';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = 'Home' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back),
        onPressed: ()
          {
            setState(() {
              Navigator.pop(context);
            });
          },
        )
        ,
        title: Text(title),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              Navigator.pushNamed(context, 'setting');
            });
          },
            icon: Icon(Icons.settings),),

          IconButton(onPressed: (){
            setState(() {
              Navigator.pushNamed(context, 'course');
            });
          },
            icon: Icon(Icons.menu_book),),
        ],
      ),

      body: Container(

      ),
    );
  }
}
