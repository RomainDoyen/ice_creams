import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ice_creams/pages/basket/basket.dart';
import 'package:ice_creams/pages/home/home.dart';
import 'package:ice_creams/pages/home/widgets/category.dart';

void main() {
  testWidgets('Changer de page via la barre de navigation', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Vérifier que la page d'accueil est affichée par défaut
    expect(find.byType(CategorySection), findsOneWidget);

    // Simuler un clic sur l'onglet "Basket"
    await tester.tap(find.text('Basket'));
    await tester.pumpAndSettle();

    // Vérifier que la page "BasketPage" est affichée
    expect(find.byType(BasketPage), findsOneWidget);
  });
}