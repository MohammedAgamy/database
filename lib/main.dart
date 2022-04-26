 import 'package:database/setting.dart';
import 'package:flutter/material.dart';
import 'shared.dart';
import 'home.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home',
      routes: <String ,WidgetBuilder>{'Shared' : (context) => Shared(),
        'Home': (context) => Home() ,
        'setting': (context) => Setting(),
      },
    );
  }
}
