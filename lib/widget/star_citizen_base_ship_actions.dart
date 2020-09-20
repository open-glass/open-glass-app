import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_glass_app/open_glass_api.dart';

import 'package:open_glass_app/widget/api_widget.dart';

class StarCitizenBaseShipActions extends ApiWidget {
  
  StarCitizenBaseShipActions(OpenGlassApi api) : super(api);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonBar(
              mainAxisSize: MainAxisSize.max,
              alignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    child: Text('Landing Gear'),
                    onPressed: () => api.pressKey('n')
                ),
                RaisedButton(
                    child: Text('Gimbals'),
                    onPressed: () => api.pressKey('g')
                ),
                RaisedButton(
                    child: Text('Spool Quantum Drive'),
                    onPressed: () => api.pressKey('b')
                ),
              ],
            ),
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              alignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    child: Text('Weapons Power'),
                    onPressed: () => api.pressKey('p')
                ),
                RaisedButton(
                    child: Text('Shields Power'),
                    onPressed: () => api.pressKey('o')
                ),
                RaisedButton(
                    child: Text('Engines Power'),
                    onPressed: () => api.pressKey('i')
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}