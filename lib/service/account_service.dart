import 'dart:convert';

import 'package:mockva/model/account_model.dart';
import 'package:http/http.dart' as http;

class AccountService {
  AccountService(String? id);

  Future<AccountModel> getAccount(String? id) async {
    var url = 'https://mockva.daksa.co.id/mockva-rest/rest/account/detail/$id';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      print(response.body);
      var data = jsonDecode(response.body);
      print(data);
      AccountModel account = AccountModel.fromJson(data);
      // UserModel user = UserModel.fromJson(data);
      // print(user);
      // user.token = 'Bearer ' + data['access_token'];

      return account;
    } else {
      throw Exception('Gagal Menampilkan Account');
    }
  }
}
