import 'package:flutter/material.dart';
import 'package:mockva/model/history_model.dart';
import 'package:mockva/model/user_model.dart';
import 'package:mockva/providers/user_provider.dart';
import 'package:mockva/service/history_service.dart';
import 'package:provider/provider.dart';

class HistoryProvider with ChangeNotifier {
  List<cHistory> _historys = [];

  List<cHistory> get historys => _historys;

  set historys(List<cHistory> historys) {
    _historys = historys;
    notifyListeners();
  }

  Future<void> getProducts(String sessionId, String accountId) async {
    try {
      List<cHistory> historys =
          await HistoryService().getData(sessionId, accountId);
      _historys = historys;
    } catch (e) {
      print(e);
    }
  }
}
