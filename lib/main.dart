import 'package:flutter/material.dart';
import 'package:flutter_application_aula_26_04/validacao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const Color.fromARGB(255, 80, 104, 239)),
        useMaterial3: true,
      ),
      home: MyValidation(),
    );
  }
}

