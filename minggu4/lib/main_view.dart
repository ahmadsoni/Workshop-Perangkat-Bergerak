import 'package:flutter/material.dart';
import './model/mobilelegend_model.dart';
import './done_mobile_legend_view.dart';
import './list_mobile_legend_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Hero Mobile Legend"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const DoneMobileLegendView();
                  },
                ),
              );
            },
            icon: const Icon(Icons.done_outline),
          ),
        ],
      ),
      body: const ListMobileLegendView(),
    );
  }
}
