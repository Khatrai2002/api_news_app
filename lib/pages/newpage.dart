import 'package:api_news_app/custom/customlisttile.dart';
import 'package:api_news_app/model/artical_model.dart';
import 'package:api_news_app/service/api_service.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "News App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: FutureBuilder(
        future: client.getArtical(),
        builder: (BuildContext context, AsyncSnapshot<List<Artical>> snapshot) {
          if (snapshot.hasData) {
            List<Artical>? artical = snapshot.data;
            return ListView.builder(
              itemCount: artical!.length,
              itemBuilder: ((context, index) => customListTile(artical[index],context)
                  ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
