import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ice_creams/pages/home/home.dart';
import 'package:ice_creams/pages/home/widgets/category.dart';
import 'package:ice_creams/pages/home/widgets/header.dart';
import 'package:ice_creams/pages/home/widgets/search.dart';

void main() {
  testWidgets('La page d\'accueil affiche les sections principales', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Vérifier que les sections "Header", "Search" et "Category" sont présentes
    expect(find.byType(HeaderSection), findsOneWidget);
    expect(find.byType(SearchSection), findsOneWidget);
    expect(find.byType(CategorySection), findsOneWidget);
  });
}
