import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/mobilelegend_model.dart';

class Tugas3View extends GetView {
  const Tugas3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Hero Mobile Legend'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: mobileLegend.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            leading: Container(
              width: 100,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(mobileLegend[index].banner),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(mobileLegend[index].nama),
            subtitle: Text(mobileLegend[index].role,
                style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
              Get.toNamed('/detailhero', arguments: {
                'nama': mobileLegend[index].nama,
                'role': mobileLegend[index].role,
                'rank': mobileLegend[index].rank,
                'total_skin': mobileLegend[index].total_skin,
                'banner': mobileLegend[index].banner,
                'deskripsi': mobileLegend[index].deskripsi,
                'galery': mobileLegend[index].galery,
              });
            },
          ));
        },
      ),
    );
  }
}
