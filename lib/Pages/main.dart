import 'package:database/Pages/shared/setting.dart';
import 'package:database/Pages/shared/shared.dart';
import 'package:database/Pages/sql/coursesDetails.dart';
import 'package:database/Pages/sql/newCourse.dart';
import 'package:flutter/material.dart';
import 'shared/home.dart';
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
        'course': (context) => Courses(),
        'newCourse': (context) => NewCourses(),
      },
    );
  }
}
