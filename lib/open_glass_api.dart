import 'package:basic_utils/basic_utils.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

enum Game {
  STAR_CITIZEN,
}

class OpenGlassApi {

  final String apiUrl;
  final String apiKey;

  OpenGlassApi(this.apiUrl, this.apiKey);

  void chooseGame(Game game) async {
    var params = _params({
      "game" : game.toString()
    });
    _post('/chooseGame', params);
  }

  void pressKey(String key) {
    if (key.length != 1) {
      return;
    }
    var params = _params({
      "key": key
    });
    _post('/presskey', params);
  }

  Future<Response> _post(String endPoint, Map<String, String> params) {
    return HttpUtils.postForFullResponse(apiUrl + endPoint, queryParameters: params)
        .then(_handleError);
  }

  void _handleError(Response response) {
    if (response.statusCode != 200) {
      //TODO handle error stuff here in the future, for now just log it
      print('Error occured on api call:');
      print(response);
    }
  }

  Map<String, String> _params(Map<String, String> params) {
    params.update("API_KEY", (value) => apiKey);
    return params;
  }
}