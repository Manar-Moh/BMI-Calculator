import 'package:flutter/cupertino.dart';

// ignore: camel_case_types
class circleCard extends StatelessWidget {
  circleCard(this.icon);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: 30.0,
      ),
      decoration: BoxDecoration(
        color: Color(0x1fF48FB2),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
