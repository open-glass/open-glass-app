import 'package:flutter/cupertino.dart';
import 'package:open_glass_app/open_glass_api.dart';

abstract class ApiWidget extends StatelessWidget {
  final OpenGlassApi api;

  ApiWidget(this.api);
}