import 'package:flutter/material.dart';

class GanjilKeN extends StatefulWidget {
  const GanjilKeN({super.key});

  @override
  State<GanjilKeN> createState() => _GanjilKeNState();
}

class _GanjilKeNState extends State<GanjilKeN> {
  int _counter = 0;
  String text = '';

  void actionCekGanjil() {
    setState(() {
      _counter++;
      text = 'Ganjil : ';
      for (int i = 1; i <= _counter; i++) {
        if (i % 2 == 0 && i % 3 == 0) {
          text += i.toString() + ", ";
        }
      }
    });
  }

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Ganjil Ke N'),
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
        onPressed: actionCekGanjil,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    ));
  }
}
