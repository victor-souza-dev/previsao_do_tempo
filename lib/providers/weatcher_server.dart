import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Future<Map> getData() async {
  Uri url =
      Uri.parse("https://api.hgbrasil.com/weather?woeid=455823&key=fdf85382");

  http.Response response = await http.get(url);

  return json.decode(response.body);
}
