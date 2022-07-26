import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mockva/login.dart';
import 'package:mockva/model/history_model.dart';
import 'package:mockva/model/user_model.dart';
import 'package:mockva/providers/history_provider.dart';
import 'package:mockva/providers/user_provider.dart';
import 'package:mockva/service/history_service.dart';
import 'package:provider/provider.dart';

class History extends StatefulWidget {
  // const ListPageDinamis({Key? key}) : super(key: key);

  @override
  State<History> createState() => _History();
}

class _History extends State<History> {
  // List<cHistory> lisHistory = [];

  var history = [];

  // HistoryService historyService = HistoryService();

  // getData() async {
  //   lisHistory = await historyService.getData();
  // }

  final List<Map<String, dynamic>> _history = [
    {
      "Date": "2022-07-18 20:23 2",
      "Amount": 2.000,
      "Ref": "123456789000",
      "Destination": "025836978412"
    },
    {
      "Date": "2022-07-19 20:23",
      "Amount": 3.000,
      "Ref": "123456789000",
      "Destination": "025836978412"
    },
    {
      "Date": "2022-07-20 20:23",
      "Amount": 4.000,
      "Ref": "123456789000",
      "Destination": "025836978412"
    },
    {
      "Date": "2022-07-21 20:23",
      "Amount": 6.000,
      "Ref": "123456789000",
      "Destination": "025836978412"
    },
    {
      "Date": "2022-07-18 20:23",
      "Amount": 5.000,
      "Ref": "123456789000",
      "Destination": "025836978412"
    },
    {
      "Date": "2022-07-19 20:23",
      "Amount": 3.000,
      "Ref": "123456789000",
      "Destination": "025836978412"
    },
    {
      "Date": "2022-07-20 20:23",
      "Amount": 1.000,
      "Ref": "123456789000",
      "Destination": "025836978412"
    },
    {
      "Date": "2022-07-21 20:23",
      "Amount": 1.500,
      "Ref": "123456789000",
      "Destination": "025836978412"
    }
  ];

  @override
  void initState() {
    // cHistory.connectToApi('17c3f20b67054f9fa5105586575bbe6a').then((value) {
    //   return history = value;
    //   setState(() {});
    // });
    // getData();
    super.initState();
  }

  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    UserModel account = userProvider.user;

    var sessionId = account.id;
    var accountId = account.accountId;

    var data = [];

    HistoryProvider historyProvider = Provider.of<HistoryProvider>(context);
    historyProvider.getProducts(sessionId!, accountId!).then((value) {});
    // print(historyProvider);
    // var listHistory = historyProvider.getProducts;

    // print('test+$history');
    // print(historyProvider.getProducts());
    // initState() {
    //   historyProvider.historys.map((e) => null);
    //   print('Test');
    //   // HistoryProvider();
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        automaticallyImplyLeading: false,
        // titleSpacing: 0,
      ),
      // Scrollbar -> untuk memunculkan scroll bar
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,
          ),
          itemCount: _history.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text("Date : ${_history[index]["Date"]}"),
                  SizedBox(height: 2),
                  Text("Amount : ${_history[index]["Amount"]}"),
                  SizedBox(height: 2),
                  Text("Ref : ${_history[index]["Ref"]}"),
                  SizedBox(height: 2),
                  Text("Destination : ${_history[index]["Destination"]}"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
