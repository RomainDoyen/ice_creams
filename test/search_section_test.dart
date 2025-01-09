import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ice_creams/pages/home/widgets/search.dart';
import 'package:ice_creams/pages/home/widgets/search_page.dart';

void main() {
  testWidgets('SearchSection redirige vers SearchPage au clic', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SearchSection()));

    // Simuler un clic sur le champ de recherche
    await tester.tap(find.byType(Container));
    await tester.pumpAndSettle();

    // Vérifier que la page de recherche est affichée
    expect(find.byType(SearchPage), findsOneWidget);
  });
}