import 'package:flutter/material.dart';
import 'package:new_bmi_calculator/appWidgets/reusable_tile.dart';
import 'package:new_bmi_calculator/styleandthemes/constants.dart';
import 'package:new_bmi_calculator/support_classes/gender_enum.dart';

class GenderTile extends StatelessWidget {
  final Gender gender;
  final IconData iconData;
  final Color tileColor;
  final VoidCallback onTap;

  GenderTile({required this.gender, required this.iconData, required this.tileColor, required this.onTap});

  // GenderTile({required this.gender, required this.iconData, required this.onTap});
  @override
  Widget build(BuildContext context) {
    String curGender = gender == Gender.MALE ? 'MALE' : 'FEMALE';
    return GestureDetector(
      onTap: onTap,
      child: ReusableTile(
        bkColor: tileColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Icon(
                iconData,
                size: 70,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                curGender,
                style: kDefaultTileTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
