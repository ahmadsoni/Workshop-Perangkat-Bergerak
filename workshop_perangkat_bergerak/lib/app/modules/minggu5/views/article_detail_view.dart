import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/minggu5_model.dart';

class ArticleDetailView extends GetView {
  ArticleDetailView({Key? key}) : super(key: key);

  final Article article = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Apps'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: "image",
              child: article != null && article.urlToImage != null
                  ? Image.network(article.urlToImage)
                  : Image.asset(
                      'https://akcdn.detik.net.id/visual/2023/03/25/takjil-gratis-di-kampung-ramadan-jogokariyan-2_169.jpeg?w=970&q=80'),
            ),
            Padding(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Text(article.description ?? "",
                        style: TextStyle(fontSize: 18)),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text("Date : ${article.publishedAt}"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Author : ${article.author}"),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(article.content ?? ""),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Read More"))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
