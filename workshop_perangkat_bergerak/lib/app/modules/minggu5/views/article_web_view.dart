import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleWebView extends GetView {
  ArticleWebView({Key? key}) : super(key: key);

  final String url = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Apps'),
        centerTitle: true,
      ),
      body: Text(url),
    );
  }
}
