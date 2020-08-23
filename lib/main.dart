import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
//      home: InputPage(),

      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
//        '/result': (context) => ResultPage(),
      },
    );
  }
}
