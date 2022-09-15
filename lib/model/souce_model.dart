import 'package:http/http.dart' as http;

class Source {
  final String? id;
  final String? name;

  Source({this.id, this.name});
  factory Source.fromjson(Map<String, dynamic> json) {
    return Source(id: json['id'], name: json['name']);
  }

}
