import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaKeN extends StatefulWidget {
  const PrimaKeN({super.key});

  @override
  State<PrimaKeN> createState() => _PrimaKeNState();
}

class _PrimaKeNState extends State<PrimaKeN> {
  int _counter = 0;
  String text = '';
  void actionCekPrima() {
    setState(() {
      _counter++;
      text = 'Prima: ';
      for (int i = 2; i <= _counter; i++) {
        if (isPrime(i)) {
          text += '$i, ';
        }
      }
    });
  }

  bool isPrime(int n) {
    if (n < 2) return false;
    for (int i = 2; i <= n / 2; i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Prima Ke N'),
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
        onPressed: actionCekPrima,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    ));
  }
}
