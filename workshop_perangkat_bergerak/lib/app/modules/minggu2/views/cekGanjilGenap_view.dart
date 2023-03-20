import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CekGanjilGenap extends StatefulWidget {
  const CekGanjilGenap({super.key});

  @override
  State<CekGanjilGenap> createState() => _CekGanjilGenapState();
}

class _CekGanjilGenapState extends State<CekGanjilGenap> {
  int _counter = 0;
  String text = '';

  void actionCekGanjilGenap() {
    setState(() {
      _counter++;
      text = _counter % 2 == 0 ? 'Genap' : 'Ganjil';
    });
  }

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Cek Ganjil Genap'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'You have pushed the button this many times',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: actionCekGanjilGenap,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    ));
  }
}
