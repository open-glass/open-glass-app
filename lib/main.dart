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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenGlass Debug',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Debug OpenGlass'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
