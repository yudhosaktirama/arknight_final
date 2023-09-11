import 'package:flutter/material.dart';

class KarauselState extends ChangeNotifier {
  int index = 0;

  int get dapatIndex => index;

  void setIndex(int indexkarausel) {
    index = indexkarausel;
    notifyListeners();
  }

  Stream<int> get indexku async* {
    yield index;
  }

  int semoga() {
    var coba = index;
    ChangeNotifier();
    return coba;
  }
}

class BottomNavState extends ChangeNotifier {
  int index = 0;

  void setIndex(int indexBottom) {
    index = indexBottom;
    notifyListeners();
  }
}

class FeatureEnemyState extends ChangeNotifier {
  int index = 0;

  void setIndex(int indexkarausel) {
    index = indexkarausel;
    notifyListeners();
  }
}
