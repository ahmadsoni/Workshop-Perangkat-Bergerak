import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './model/mobilelegend_model.dart';
import './model/mobilelegend_model.dart';
import './list_item_view.dart';
import './detail_mobile_legend.dart';
import './provider/done_mobilelegend_provider.dart';

class ListMobileLegendView extends StatefulWidget {
  const ListMobileLegendView({Key? key}) : super(key: key);

  @override
  State<ListMobileLegendView> createState() => _ListMobileLegendViewState();
}

class _ListMobileLegendViewState extends State<ListMobileLegendView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: mobileLegend.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailMobileLegend(
                      data: mobileLegend[index],
                    );
                  },
                ),
              );
            },
            child: Consumer<DoneMobileLegendProvider>(
                builder: (context, DoneMobileLegendProvider data, widget) {
              return ListItem(
                  mobileLegend: mobileLegend[index],
                  isDone: data.doneMobileLegend.contains(mobileLegend[index]),
                  onCheckboxClick: (bool? value) {
                    data.complete(mobileLegend[index], value!);

                    // setState(
                    //   () {
                    //     if (value != null) {
                    //       value
                    //           ? doneMobileLegend.add(mobileLegend[index])
                    //           : doneMobileLegend.remove(mobileLegend[index]);
                    //     }
                    //   },
                    // );
                  });
            }),
          );
        });
  }
}
