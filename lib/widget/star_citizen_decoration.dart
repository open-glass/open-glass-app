
import 'package:flutter/material.dart';

BoxDecoration scBackground = new BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color.fromRGBO(2, 19, 19, 1), Color.fromRGBO(3, 32, 31, 0.7)]
  ),
);

BoxDecoration scBlueButtonBackground = new BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(5.0)),
  border: Border.all(
    color: Color.fromRGBO(43, 237, 230, 1),
    width: 1,
  ),
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color.fromARGB(255, 2, 26, 25), Color.fromARGB(255, 4, 52, 50)],
      tileMode: TileMode.repeated
  ),
);

BoxDecoration scRedButtonBackground = new BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(5.0)),
  border: Border.all(
    color: Color.fromRGBO(237, 55, 55, 1),
    width: 1,
  ),
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color.fromRGBO(237, 55, 55, 0.1), Color.fromRGBO(237, 55, 55, 0.3)],
      tileMode: TileMode.repeated
  ),
);

Color scRedTextColor = Color.fromRGBO(237, 55, 55, 1);
Color scBlueTextColor = Color.fromRGBO(43, 237, 230, 1);