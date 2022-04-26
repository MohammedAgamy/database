import 'package:flutter/material.dart';
import 'dart:core';

import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  String title = 'Setting';
  int favColor = Colors.white.value;

  SharedPreferences? preferences;

  saveData(int color) async {
    preferences = await SharedPreferences.getInstance();
    preferences?.setInt('favColor', color);
  }

  getData() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      favColor = preferences?.getInt('favColor') ?? Colors.white.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: Color(favColor),
      //
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: Text('Green'),
              value: Colors.green.value,
              groupValue: favColor,
              onChanged: (int? newColor) {
                setState(() {
                  favColor = newColor!;
                });
                saveData(newColor!);
              },
            ),
            RadioListTile(
              title: Text('orange'),
              value: Colors.orange.value,
              groupValue: favColor,
              onChanged: (int? newColor) {
                setState(() {
                  favColor = newColor!;
                });
                saveData(newColor!);
              },
            ),
            RadioListTile(
              title: Text('black'),
              value: Colors.black.value,
              groupValue: favColor,
              onChanged: (int? newColor) {
                setState(() {
                  favColor = newColor!;
                });
                saveData(newColor!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
