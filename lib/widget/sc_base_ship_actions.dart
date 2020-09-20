import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_glass_app/open_glass_api.dart';

import 'package:open_glass_app/widget/api_widget.dart';
import 'package:open_glass_app/widget/sc_common_widgets.dart';
import 'package:open_glass_app/widget/star_citizen_decoration.dart';

class SCBaseShipActions extends ApiWidget {

  SCBaseShipActions(OpenGlassApi api) : super(api);


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      body: Container(
        decoration: scBackground,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                alignment: MainAxisAlignment.center,
                children: [
                  SCButton(
                    text: 'Landing Gear',
                    decoration: scBlueButtonBackground,
                    textColor: scBlueTextColor,
                    onPressed: () => api.pressKey('n'),
                  ),
                  SCButton(
                    text: 'Gimbals',
                    decoration: scRedButtonBackground,
                    textColor: scRedTextColor,
                    onPressed: () => api.pressKey('g'),
                  ),
                  SCButton(
                    text: 'Spool Quantum Drive',
                    decoration: scBlueButtonBackground,
                    textColor: scBlueTextColor,
                    onPressed: () => api.pressKey('b'),
                  ),
                ],
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                alignment: MainAxisAlignment.center,
                children: [
                  SCButton(
                    text: 'Weapons Power',
                    decoration: scBlueButtonBackground,
                    textColor: scBlueTextColor,
                    onPressed: () => api.pressKey('p'),
                  ),
                  SCButton(
                    text: 'Shields Power',
                    decoration: scBlueButtonBackground,
                    textColor: scBlueTextColor,
                    onPressed: () => api.pressKey('o'),
                  ),
                  SCButton(
                    text: 'Engines Power',
                    decoration: scBlueButtonBackground,
                    textColor: scBlueTextColor,
                    onPressed: () => api.pressKey('i'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}