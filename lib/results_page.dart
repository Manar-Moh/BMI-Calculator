import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/InputPage.dart';
import 'Reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmi, this.textResult, this.adviseResult});

  final String bmi;
  final String textResult;
  final String adviseResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable_card(
              colour: KInActiveCardColour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(textResult, style: KStatusStyle),
                  Text(bmi, style: KBMIStyle),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Text(
                      adviseResult,
                      style: KAdviseStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: KBottomContainerHeight,
              color: KBottomContainerColour,
              child: Center(
                child: Text(
                  "Re-Calculate",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
