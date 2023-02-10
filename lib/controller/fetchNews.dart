
import 'dart:convert';
import 'package:http/http.dart';

class FetchNews{
  static fetchNews() async{
    Response response = await get(Uri.parse("https://newsapi.org/v2/top-headlines/sources?apiKey=ce7d227ad2594b1a825edd5f7c1790bc"));

    Map body_data = jsonDecode(response.body);
    print(body_data);
  }
}