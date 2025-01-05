import 'package:flutter/material.dart';
import 'package:petstore_sampathk_1001/utils/colors_constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.buttonTitle,
      required this.onPressed,
      this.buttonBgColor = ColorsConstants.primaryColor,
      this.buttonWidth = double.infinity,
      this.buttonTextColor = const Color.fromARGB(255, 9, 4, 4)});
  final String buttonTitle;
  final void Function() onPressed;
  final Color buttonBgColor;
  final double buttonWidth;
  final Color buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: buttonWidth,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonBgColor,
          ),
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 16, color: buttonTextColor),
          ),
        ));
  }
}
