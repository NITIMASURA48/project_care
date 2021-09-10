import 'package:flutter/material.dart';
import 'package:project_care/screen/startprogramui.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //widget my app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
       home: HomeScreen(),
      );
  }
}
