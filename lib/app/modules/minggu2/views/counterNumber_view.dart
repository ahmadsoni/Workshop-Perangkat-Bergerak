import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterNumber extends StatefulWidget {
  const CounterNumber({super.key});

  @override
  State<CounterNumber> createState() => _CounterNumberState();
}

class _CounterNumberState extends State<CounterNumber> {
  int _counter = 0;
  String text = '';

  void actionCekGanjil() {
    setState(() {
      _counter++;
      text = 'Counter : ' + _counter.toString();
    });
  }

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: const Text('Ganjil Ke N'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          )),
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
        onPressed: actionCekGanjil,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    ));
  }
}
