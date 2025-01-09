import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ice_creams/pages/home/widgets/popular.dart';

void main() {
  testWidgets('PopularIceCream affiche les images associé à la glace', (WidgetTester tester) async {
    // Injecter les données mockées dans le widget
    await tester.pumpWidget(MaterialApp(home: PopularIceCream(category: 'All')));

    // Vérifier que l'image de fond pour "Chocolate Ice Cream" est bien affichée
    expect(find.byWidgetPredicate(
      (widget) => widget is Image && widget.image is AssetImage && 
                  (widget.image as AssetImage).assetName == 'assets/images/chocolat.jpg',
    ), findsOneWidget);

    // Vous pouvez également tester pour l'image de fond associée à la glace au citron
    expect(find.byWidgetPredicate(
      (widget) => widget is Image && widget.image is AssetImage && 
                  (widget.image as AssetImage).assetName == 'assets/images/citron.png',
    ), findsOneWidget);
  });
}