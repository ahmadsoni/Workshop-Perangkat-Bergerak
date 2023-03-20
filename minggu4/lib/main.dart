import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/done_mobilelegend_provider.dart';
import './main_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneMobileLegendProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Top Hero Mobile Legend',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainView(),
      ),
    );
  }
}
