import 'package:flutter/material.dart';

class SCButton extends StatelessWidget {

  final String text;
  final BoxDecoration decoration;
  final Color textColor;
  final Function onPressed;

  SCButton({
    this.text = '',
    this.decoration = const BoxDecoration(),
    this.textColor = const Color(0),
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: decoration,
      child: FlatButton(
        textColor: textColor,
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            shadows: <Shadow>[
              Shadow(
                blurRadius: 8.0,
                color: textColor,
              )
            ]
          ),
        ),
        ),
    );
  }

}