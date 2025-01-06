import 'package:flutter/foundation.dart';
import 'package:ice_creams/models/icecream.dart';

class BasketModel extends ChangeNotifier {
  final Map<IceCream, int> _items = {};

  Map<IceCream, int> get items => _items;

  get totalPrice => _items.entries
      .map((e) => e.key.price * e.value)
      .reduce((value, element) => value + element);

  void addToBasket(IceCream iceCream) {
    if (_items.containsKey(iceCream)) {
      _items[iceCream] = _items[iceCream]! + 1;
    } else {
      _items[iceCream] = 1;
    }
    notifyListeners();
  }

  void removeFromBasket(IceCream iceCream) {
    if (_items.containsKey(iceCream) && _items[iceCream]! > 1) {
      _items[iceCream] = _items[iceCream]! - 1;
    } else {
      _items.remove(iceCream);
    }
    notifyListeners();
  }
}
