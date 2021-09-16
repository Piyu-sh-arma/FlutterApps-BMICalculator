import 'package:flutter/material.dart';
import 'package:new_bmi_calculator/appWidgets/custom_slider_widget.dart';
import 'package:new_bmi_calculator/appWidgets/gender_toggle_widget.dart';
import 'package:new_bmi_calculator/appWidgets/minus_plus_widget.dart';
import 'package:new_bmi_calculator/pages/resultPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int weightValue = 20;
  int ageValue = 20;
  int heightValue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GenderToggleWidget(),
          CustomSliderWidget(
            onUpdate: (newValue) {
              heightValue = newValue.toInt();
            },
          ),
          Expanded(
            child: Row(
              children: [
                MinusPlusWidget(
                  value: weightValue,
                  title: 'WEIGHT',
                  onPositiveChange: () {
                    weightValue++;
                  },
                  onNegativeChange: () {
                    weightValue--;
                  },
                ),
                MinusPlusWidget(
                  value: ageValue,
                  title: 'AGE',
                  onPositiveChange: () {
                    ageValue++;
                  },
                  onNegativeChange: () {
                    ageValue--;
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            // padding: EdgeInsets.only(bottom: 10),
            width: double.infinity,
            height: 70,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFEB1555)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 18)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ))),
              onPressed: () {
                // Navigator.pushNamed(context, '/result');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BMIResults(
                            weight: weightValue,
                            age: ageValue,
                            height: heightValue,
                          )),
                );
              },
              child: Text(
                'CALCULATE YOUR BMI',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
