import 'package:bmi_calculate/modules/bmi/bmi.dart';
import 'package:flutter/material.dart';
import 'modules/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.routName,
      routes: {
        BmiScreen.routeName: (context) => BmiScreen(),
        LoginScreen.routName: (context) => LoginScreen()
      },
    );
  }
}
