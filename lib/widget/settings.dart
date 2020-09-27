import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_glass_app/widget/prefs.dart';

class Settings extends StatefulWidget {

  _SettingsPageState createState() => _SettingsPageState();

}

class _SettingsPageState extends State<Settings> {

  final TextEditingController hostController = TextEditingController();
  final TextEditingController portController = TextEditingController();
  final TextEditingController apiKeyController = TextEditingController();

  bool secure = true;

  @override
  Widget build(BuildContext context) {
    getString("settings.host").then((value) => hostController.text = value);
    getString("settings.port").then((value) => portController.text = value);
    getString("settings.apiKey").then((value) => apiKeyController.text = value);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Host"
              ),
              controller: hostController,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Port"
              ),
              controller: portController,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Api key"
              ),
              controller: apiKeyController,
            ),
            CheckboxListTile(
              title: Text("HTTPS"),
              value: secure,
              onChanged: (newValue) {
                setState(() {
                  secure = newValue;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
            ),
            RaisedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (secure) {
                    saveString("settings.secure", "https");
                  } else {
                    saveString("settings.secure", "http");
                  }
                  saveString("settings.host", hostController.text);
                  saveString("settings.port", portController.text);
                  saveString("settings.apiKey", apiKeyController.text);
                }
            )
          ],
        ),
      ),
    );
  }
}