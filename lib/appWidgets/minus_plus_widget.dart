import 'package:flutter/material.dart';
import 'package:new_bmi_calculator/appWidgets/reusable_tile.dart';
import 'package:new_bmi_calculator/styleandthemes/constants.dart';

class MinusPlusWidget extends StatefulWidget {
  final int value;
  final String title;
  final Function onPositiveChange, onNegativeChange;
  MinusPlusWidget({required this.value, required this.title, required this.onPositiveChange, required this.onNegativeChange});

  @override
  _MinusPlusWidgetState createState() => _MinusPlusWidgetState(value, title, onPositiveChange, onPositiveChange);
}

class _MinusPlusWidgetState extends State<MinusPlusWidget> {
  int value;
  String title;
  Function onPositiveChange, onNegativeChange;
  _MinusPlusWidgetState(this.value, this.title, this.onPositiveChange, this.onNegativeChange);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableTile(
          bkColor: kActiveTileColor,
          child: Column(
            children: [
              Text(
                title,
                style: kDefaultTileTextStyle,
              ),
              Text(
                value.toString(),
                style: kNumberStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      foregroundColor: MaterialStateProperty.all(Color(0xFF8D8E98)),
                      backgroundColor: MaterialStateProperty.all(Color(0xFF0A0E21)),
                    ),
                    onPressed: () {
                      setState(() {
                        --value;
                      });
                      onPositiveChange();
                    },
                    child: Text(
                      '-',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      foregroundColor: MaterialStateProperty.all(Color(0xFF8D8E98)),
                      backgroundColor: MaterialStateProperty.all(Color(0xFF0A0E21)),
                    ),
                    onPressed: () {
                      setState(() {
                        ++value;
                      });
                      onNegativeChange();
                    },
                    child: Text(
                      '+',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
