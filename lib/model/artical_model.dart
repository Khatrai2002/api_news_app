

import 'souce_model.dart';

class Artical {
  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  Artical(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});
  factory Artical.fromJson(Map<String, dynamic> json) {
    return Artical(
       source: Source.fromjson(json['source']),
      author: json['author'] ,
      content: json['content'] ,
      description: json['description'],
      publishedAt: json['publishedAt'] ,
      title: json['title'] ,
      url: json['url'] ,
      urlToImage: json['urlToImage'] ,
    );
  }
}


