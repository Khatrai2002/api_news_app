import 'dart:convert';
import 'package:api_news_app/model/artical_model.dart';
import 'package:http/http.dart';

class ApiService {
  final String? url =
      'http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=882a1269cde44b6aae4acd7ce13e1d5c';

  Future<List<Artical>> getArtical() async {
    Response res = await get(Uri.parse("$url"));
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Artical> articles =
          body.map((dynamic e) => Artical.fromJson(e)).toList();

      return articles;
    } else {
      throw ("can nat get the data");
    }
  }
}
