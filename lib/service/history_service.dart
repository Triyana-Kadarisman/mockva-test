import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mockva/model/history_model.dart';

class HistoryService {
  final Url =
      "https://mockva.daksa.co.id/mockva-rest/rest/account/transaction/log/";
  Future<List<cHistory>> getData(String sessionId, String accountId) async {
    var headers = {"_sessionId": sessionId};

    Map<String, String> queryParams = {"accountSrcId": accountId};

    var response = await http.get(
      Uri.parse(Url).replace(queryParameters: queryParams),
      headers: headers,
    );
    print(response);
    if (response.statusCode == 200) {
      print(response.body);
      List data = jsonDecode(response.body)['data'];
      List<cHistory> history = [];

      for (var item in data) {
        history.add(cHistory.fromJson(item));
      }
      // print(history[1]);
      return history;
    } else {
      throw Exception('Gagal Get History');
    }
  }
}
