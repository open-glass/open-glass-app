import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_glass_app/open_glass_api.dart';
import 'package:open_glass_app/widget/prefs.dart';
import 'package:open_glass_app/widget/sc_base_ship_actions.dart';
import 'package:open_glass_app/widget/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenGlass Debug',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Debug OpenGlass'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => new Settings()))
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choose game'
            ),
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: [
                RaisedButton(
                    child: Text('Star Citizen'),
                    onPressed: () {
                      getString("settings.secure").then((secure) {
                        getString("settings.host").then((host) {
                          getString("settings.port").then((port) {
                            getString("settings.apiKey").then((apiKey) {
                              OpenGlassApi api = new OpenGlassApi(secure + "://" + host + ":" + port, apiKey);
                              api.chooseGame(Game.STAR_CITIZEN);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => new SCBaseShipActions(api)));
                            });
                          });
                        });
                      });
                    }
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
