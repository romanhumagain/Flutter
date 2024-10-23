import 'dart:convert';
import 'package:flutter_app/static/static.dart';
import 'package:http/http.dart' as http;
import '../newsapi.dart';

class GetNewsAPI {
  Future<NewsApi?> getNewsAPI() async {
    var url = Uri.https(StaticValue.baseURL, '/v2/everything',
        {'q': 'tesla', 'apiKey': StaticValue.apiKey});

    // Await the http get response, then decode the json-formatted response.

    try{
      var response = await http.get(url);
      if (response.statusCode.toString().contains("20")) {
        var jsonData = jsonDecode(response.body);
        NewsApi newsData = NewsApi.fromJson(jsonData);
        return newsData;
      } else {
        return null;
      }
    }
    catch(e){
      return null;
    }
  }
}
