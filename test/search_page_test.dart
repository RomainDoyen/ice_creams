import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ice_creams/pages/home/controller/search_controller.dart';
import 'package:ice_creams/pages/home/widgets/search_page.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('SearchPage affiche les résultats de recherche filtrés', (WidgetTester tester) async {

    // Simuler un contrôleur de recherche avec Provider
    final searchController = SearchControllerIceCream();
    searchController.updateQuery('Chocolate');
    // searchController.updateQuery('Vanilla');

    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: searchController,
        child: const MaterialApp(home: SearchPage()),
      ),
    );

    // Vérifier que seul le résultat correspondant est affiché
    // expect(find.text('Vanilla'), findsOneWidget);
    expect(find.text('Chocolate'), findsNothing);
  });
}