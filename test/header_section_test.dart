import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ice_creams/pages/home/widgets/header.dart';

void main() {
  testWidgets('HeaderSection affiche le texte de bienvenue et l\'avatar', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HeaderSection()));

    // Vérifier les textes de bienvenue
    expect(find.text('Welcome,'), findsOneWidget);
    expect(find.text('What would you like to ice cream?'), findsOneWidget);

    // Vérifier que l'avatar est affiché
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}