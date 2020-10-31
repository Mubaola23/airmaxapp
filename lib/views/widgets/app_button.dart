import 'package:airmaxapp/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final String text;
  final Color textColor;

  const AppButton({
    Key key,
    @required this.onPressed,
    this.color,
    this.text,
    this.textColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: textColor),
              textAlign: TextAlign.center,
            ),
            Icon(
              LineIcons.arrow_right,
              color: kSecondaryColor,
            )
          ],
        ),
      ),
    );
  }
}
