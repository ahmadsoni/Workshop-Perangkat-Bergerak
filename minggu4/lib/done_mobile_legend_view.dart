import 'package:flutter/material.dart';
import './model/mobilelegend_model.dart';
import 'package:provider/provider.dart';
import './provider/done_mobilelegend_provider.dart';
import './detail_mobile_legend.dart';

class DoneMobileLegendView extends StatelessWidget {
  const DoneMobileLegendView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MobileLegend> doneMobileLegendList =
        Provider.of<DoneMobileLegendProvider>(context, listen: false)
            .doneMobileLegend;

    return Scaffold(
      appBar: AppBar(
        title: Text('Sudah Membaca Hero Mobile Legend'),
        centerTitle: true,
      ),
      // // ========= Provider =========
      // body: ListView.builder(
      //   itemCount: data.length,
      //   itemBuilder: (contex, index) {
      //     final MobileLegend mobileLegend = data[index];
      //     return Card(
      //         child: Row(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [Text(mobileLegend.nama), Icon(Icons.done_outline)],
      //     ));
      //   },
      // ));
      // ================= Tugas ==================
      body: ListView.builder(
        itemCount: doneMobileLegendList.length,
        itemBuilder: (context, index) {
          final MobileLegend mobileLegend = doneMobileLegendList[index];
          return Card(
            child: ListTile(
              leading: Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(mobileLegend.banner),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(mobileLegend.nama),
              subtitle: Text(mobileLegend.role),
              trailing: const Icon(Icons.done_outline),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailMobileLegend(
                      data: mobileLegend,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
