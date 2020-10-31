import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final Icon icon;
  final Function onPressed;

  const NavButton({
    Key key,
    @required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: icon,
        ),
      ),
    );
  }
}
