import 'package:flutter/material.dart';
import 'package:ice_creams/models/icecream.dart';

class SearchControllerIceCream with ChangeNotifier {
  String _query = '';
  String get query => _query;

  void updateQuery(String query) {
    _query = query;
    notifyListeners();
  }

  List<IceCream> searchResults(List<IceCream> items) {
    return items
        .where((item) => item.name.toLowerCase().contains(_query.toLowerCase()))
        .toList();
  }
}
