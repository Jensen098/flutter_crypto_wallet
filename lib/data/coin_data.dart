import 'package:flutter/foundation.dart';

import 'dart:collection';

import '../models/coin_model.dart';

class CoinData extends ChangeNotifier {
  List<Coin> _coins = [];

  UnmodifiableListView get coinList => UnmodifiableListView(_coins);

  int get coinListCoin => _coins.length;

  void addCoin(Coin newCoin) {
    _coins.add(newCoin);
    notifyListeners();
  }

  void deleteCoin(Coin oldCoin) {
    _coins.remove(oldCoin);
    notifyListeners();
  }
}
