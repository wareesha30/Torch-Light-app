import 'package:flutter/material.dart';
import 'package:lightapp/torch_light.dart';
import 'package:torch_controller/torch_controller.dart';

void main() {
  // Torchcontroller().initialize();
  TorchController().initialize();
  runApp(const MyApp());
}

// class Torchcontroller {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Torch Light',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Torchlight(),
    );
  }
}
