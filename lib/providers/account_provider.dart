import 'package:flutter/cupertino.dart';
import 'package:mockva/model/account_model.dart';
import 'package:mockva/service/account_service.dart';
import 'package:mockva/service/user_service.dart';

class AccountProvider with ChangeNotifier {
  late AccountModel _account;

  AccountModel get account => _account;

  set account(AccountModel account) {
    _account = account;
    notifyListeners();
  }

  Future<bool> getAccount() async {
    String? id;
    try {
      AccountModel account = await AccountService(id).getAccount(id);

      _account = account;
      return true;
    } catch (e) {
      print(e);
      throw Exception('Gagal');
    }
  }
}
