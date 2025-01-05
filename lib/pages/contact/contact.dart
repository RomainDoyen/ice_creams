import 'package:flutter/material.dart';
import 'package:ice_creams/pages/contact/widgets/map.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFC8B7F7),
      body: Column(
        children: [
          Expanded(
            child: MapsBaseWidget(),
          ),
        ],
      ),
    );
  }
}
