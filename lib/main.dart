import 'package:flutter/material.dart';
import 'package:ice_creams/pages/home/home.dart';
import 'package:ice_creams/models/basket.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => BasketModel(),
      child: const MyApp(),
    ),
    // const MyApp()
  );
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