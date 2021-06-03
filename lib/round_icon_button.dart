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
        color: Theme.of(context).primaryColor,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 10.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
