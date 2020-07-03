import 'package:flutter/cupertino.dart';
import 'Constants.dart';

// ignore: camel_case_types
class child_card extends StatelessWidget {
  child_card(this.icon, this.text);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 25.0,
        ),
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          text,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
