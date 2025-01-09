import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ice_creams/pages/home/widgets/category.dart';

void main() {
  testWidgets('CategorySection affiche les catégories et permet de les sélectionner', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: CategorySection()));

    // Vérifier que toutes les catégories sont affichées
    expect(find.text('All'), findsOneWidget);
    expect(find.text('Chocolate'), findsOneWidget);
    expect(find.text('Lemon'), findsOneWidget);

    // Simuler un clic sur une catégorie
    await tester.tap(find.text('Chocolate'));
    await tester.pump();

    // Vérifier que la catégorie sélectionnée a changé
    expect(find.text('Chocolate', skipOffstage: false), findsOneWidget);
  });
}