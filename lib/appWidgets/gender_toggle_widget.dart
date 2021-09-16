import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_bmi_calculator/support_classes/gender_enum.dart';
import 'package:new_bmi_calculator/styleandthemes/constants.dart';

import 'gender_tile.dart';

class GenderToggleWidget extends StatefulWidget {
  const GenderToggleWidget({Key? key}) : super(key: key);

  @override
  _GenderToggleWidgetState createState() => _GenderToggleWidgetState();
}

class _GenderToggleWidgetState extends State<GenderToggleWidget> {
  Color maleTileColor = kActiveTileColor;
  Color femaleTileColor = kInactiveTileColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: GenderTile(
            gender: Gender.MALE,
            iconData: FontAwesomeIcons.mars,
            tileColor: maleTileColor,
            onTap: () {
              setState(() {
                maleTileColor = maleTileColor == kActiveTileColor ? kInactiveTileColor : kActiveTileColor;
                femaleTileColor = maleTileColor == kActiveTileColor ? kInactiveTileColor : kActiveTileColor;
              });
            },
          ),
        ),
        Expanded(
          child: GenderTile(
            gender: Gender.FEMALE,
            iconData: FontAwesomeIcons.venus,
            tileColor: femaleTileColor,
            onTap: () {
              setState(() {
                femaleTileColor = femaleTileColor == kActiveTileColor ? kInactiveTileColor : kActiveTileColor;
                maleTileColor = femaleTileColor == kActiveTileColor ? kInactiveTileColor : kActiveTileColor;
              });
            },
          ),
        ),
      ],
    );
  }
}
