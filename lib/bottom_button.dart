import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    @required this.onPressed,
    @required this.buttonTitle,
  });

  final Function onPressed;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        constraints: BoxConstraints.expand(
          height: kBottomContainerHeight,
        ),

        /// or using width: double.infinity
        ///          height: bottomContainerHeight
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
