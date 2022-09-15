import 'package:api_news_app/model/artical_model.dart';
import 'package:api_news_app/pages/details.dart';
import 'package:flutter/material.dart';

Widget customListTile(Artical artical, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticDetailsPage(
                    artical: artical,
                  )));
    },
    child: Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 3.0)],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(
                    "${artical.urlToImage}",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "${artical.source?.name}",
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "${artical.title}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    ),
  );
}
