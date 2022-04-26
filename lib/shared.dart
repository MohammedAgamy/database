
import 'package:flutter/material.dart';
class Shared extends StatefulWidget {
  const Shared({Key? key}) : super(key: key);

  @override
  State<Shared> createState() => _SharedState();
}

class _SharedState extends State<Shared> {
  String title = 'Shared' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(title),

      ),

      body: Container(

      ),
    );
  }
}
