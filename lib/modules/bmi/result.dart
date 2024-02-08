import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  static const String routName = 'BmiResult';
  int? age;
  double? result;
  String? Gender;

  BmiResult({required this.age, required this.result, required this.Gender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender : $Gender ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
            Text('Result : $result',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
            Text('Age : $age ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
          ],
        ),
      ),
    );
  }
}
