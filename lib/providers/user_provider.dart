import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:mockva/login.dart';
import 'package:mockva/model/user_model.dart';
import 'package:mockva/service/user_service.dart';

class UserProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> login({
    required String username,
    required String password,
  }) async {
    try {
      UserModel user = await UserService().login(
        pusername: username,
        ppassword: password,
      );
      print(login);

      _user = user;
      print(_user);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }


}
