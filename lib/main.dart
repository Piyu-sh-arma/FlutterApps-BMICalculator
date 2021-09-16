import 'package:flutter/material.dart';
import 'package:new_bmi_calculator/pages/homepage.dart';
import 'package:new_bmi_calculator/styleandthemes/appstyle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppStyleSetup.getThemeData(),
      home: HomePage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => HomePage(),
      //   '/result': (context) => BMIResults(),
      // },
    );
  }
}
