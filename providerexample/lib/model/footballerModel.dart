import 'package:flutter/material.dart';
import 'package:providerexample/data/footBallerData.dart';
import 'package:providerexample/model/footballer.dart';

class FootBallerModel extends ChangeNotifier {
  List<FootBaller> getFootballerList() => footballerList;

  void addFootBaller() {
    var f = FootBaller("Jan", "Oblak", "Atletico Madrid", 28);
    footballerList.insert(0, f);
    notifyListeners();
  }
}
