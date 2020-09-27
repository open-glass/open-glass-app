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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SCButton(
                text: 'Eject',
                decoration: scRedButtonBackground,
                textColor: scRedTextColor,
                onPressed: () => api.holdKey('Y'),
              ),
              Column(
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
                        onPressed: () => api.pressKey('N'),
                      ),
                      SCButton(
                        text: 'Gimbals',
                        decoration: scBlueButtonBackground,
                        textColor: scBlueTextColor,
                        onPressed: () => api.pressKey('G'),
                      ),
                      SCButton(
                        text: 'Spool Quantum Drive',
                        decoration: scBlueButtonBackground,
                        textColor: scBlueTextColor,
                        onPressed: () => api.pressKey('B'),
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
                        onPressed: () => api.pressKey('P'),
                      ),
                      SCButton(
                        text: 'Shields Power',
                        decoration: scBlueButtonBackground,
                        textColor: scBlueTextColor,
                        onPressed: () => api.pressKey('O'),
                      ),
                      SCButton(
                        text: 'Engines Power',
                        decoration: scBlueButtonBackground,
                        textColor: scBlueTextColor,
                        onPressed: () => api.pressKey('I'),
                      ),
                    ],
                  ),
                ],
              ),
              SCButton(
                text: 'Self destruct',
                decoration: scRedButtonBackground,
                textColor: scRedTextColor,
                onPressed: () => api.holdKey('BACK_SPACE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}