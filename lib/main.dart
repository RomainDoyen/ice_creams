import 'package:flutter/material.dart';
import 'package:ice_creams/pages/home/controller/search_controller.dart';
import 'package:ice_creams/pages/home/home.dart';
import 'package:ice_creams/models/basket.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BasketModel()),
        ChangeNotifierProvider(create: (context) => SearchControllerIceCream()),
      ],
      child: const MyApp(),
    )
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