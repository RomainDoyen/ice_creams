import 'package:flutter/material.dart';
import 'package:ice_creams/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ice Creams',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}