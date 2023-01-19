import 'package:flutter/material.dart';
import 'package:torch/tocrhHomepage.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TorchLite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  TorchHomePage(),
    );
  }
}

