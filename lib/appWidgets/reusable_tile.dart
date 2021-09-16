import 'package:flutter/material.dart';

class ReusableTile extends StatelessWidget {
  final Color bkColor;
  final Widget child;

  ReusableTile({required this.bkColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bkColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
