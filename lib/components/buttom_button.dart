import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final VoidCallback  onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: kBottomContainerColour,
          margin: const EdgeInsets.only(top: 10.0),
          padding: const EdgeInsets.only(bottom: 2.0),
          width: double.infinity,
          height: kBottomContainerHeight,
          child: Center(
            child: Text(
              buttonTitle,
              style: kLargeButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}