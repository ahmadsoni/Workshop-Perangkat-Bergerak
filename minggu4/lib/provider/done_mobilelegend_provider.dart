import 'package:flutter/foundation.dart';
import '../model/mobilelegend_model.dart';

class DoneMobileLegendProvider with ChangeNotifier {
  final List<MobileLegend> _doneMobileLegendList = [];
  List<MobileLegend> get doneMobileLegend => _doneMobileLegendList;

  void complete(MobileLegend mobilelegend, bool isDone) {
    isDone
        ? _doneMobileLegendList.add(mobilelegend)
        : _doneMobileLegendList.remove(mobilelegend);
    notifyListeners();
  }
}
