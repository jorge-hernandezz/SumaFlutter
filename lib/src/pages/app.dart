import 'package:flutter/material.dart';
import 'package:suma/src/pages/sumDosNumeros.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SumaDosNumeros(),
      },
    );
  }
}
