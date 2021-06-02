import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Color(0xFFc6ff00),
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Colors.black,
      elevation: 10.0,
      splashColor: Colors.white,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
