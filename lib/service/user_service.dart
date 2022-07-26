import 'dart:convert';

import 'package:mockva/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  Future<UserModel> login({
    String? pusername,
    String? ppassword,
  }) async {
    var url = 'https://mockva.daksa.co.id/mockva-rest/rest/auth/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'username': pusername,
      'password': ppassword,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      print(response.body);
      var data = jsonDecode(response.body);
      print(data);
      UserModel user = UserModel.fromJson(data);
      // print(user);
      // user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }

  Future<bool> deleteData(String sessionId) async {
    print(sessionId);
    final response = await http.delete(
      Uri.parse("https://mockva.daksa.co.id/mockva-rest/rest/auth/logout/"),
      headers: {"_sessionId": sessionId},
    );

    print(response.statusCode);

    if (response.statusCode == 204) {
      return true;
    } else {
      return false;
    }
  }
}
