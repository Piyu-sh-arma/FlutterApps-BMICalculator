import 'package:flutter/material.dart';

class BMIResults extends StatelessWidget {
  final int weight, age, height;

  BMIResults({required this.weight, required this.age, required this.height});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Results'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'Weight$weight',
            ),
            Text(
              'Age$age',
              // age.toString(),
            ),
            Text(
              height.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
