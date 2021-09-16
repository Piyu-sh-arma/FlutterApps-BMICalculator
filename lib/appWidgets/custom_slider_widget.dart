import 'package:flutter/material.dart';
import 'package:new_bmi_calculator/appWidgets/reusable_tile.dart';
import 'package:new_bmi_calculator/styleandthemes/constants.dart';

class CustomSliderWidget extends StatefulWidget {
  final ValueChanged<double>? onUpdate;

  CustomSliderWidget({required this.onUpdate});

  @override
  _CustomSliderWidgetState createState() => _CustomSliderWidgetState(onUpdate);
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  double value = 20;
  final ValueChanged<double>? onUpdate;

  _CustomSliderWidgetState(this.onUpdate);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableTile(
        bkColor: kActiveTileColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "HEIGHT",
              style: kDefaultTileTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  value.toInt().toString(),
                  style: kNumberStyle,
                ),
                Text(
                  ' cm',
                  style: kDefaultTileTextStyle,
                ),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: kActiveSliderColor,
                inactiveTrackColor: kInactiveSliderColor,
                thumbColor: kMainButtonColor,
                overlayColor: kButtonOverlayColor,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
              ),
              child: Slider(
                min: 0,
                max: 300,
                divisions: 300,
                value: value,
                onChanged: (newValue) {
                  setState(() {
                    value = newValue;
                  });
                  onUpdate!(newValue);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
