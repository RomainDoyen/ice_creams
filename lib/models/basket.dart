import 'package:flutter/foundation.dart';
import 'package:ice_creams/models/icecream.dart';

class BasketModel extends ChangeNotifier {
  final List<IceCream> _items = [];

  List<IceCream> get items => _items;

  void addToBasket(IceCream iceCream) {
    _items.add(iceCream);
    notifyListeners(); // Notifie les widgets que le panier a changé
  }

  void removeFromBasket(IceCream iceCream) {
    _items.remove(iceCream);
    notifyListeners();
  }
}
