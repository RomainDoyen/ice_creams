import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFC8B7F7),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Text('Contact Page'),
          ],
        ),
      ),
    );
  }
}