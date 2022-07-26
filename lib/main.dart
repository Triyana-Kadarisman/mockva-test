import 'package:flutter/material.dart';
import 'package:mockva/account_page.dart';
import 'package:mockva/history.dart';
import 'package:mockva/login.dart';
import 'package:mockva/main_page.dart';
import 'package:mockva/providers/history_provider.dart';
import 'package:mockva/providers/user_provider.dart';
import 'package:mockva/tranfer_confirm.dart';
import 'package:mockva/transfer_inquiry.dart';
import 'package:mockva/transfer_report.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HistoryProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => login(),
          '/main': (context) => MainPage(),
          '/transferinqury': (context) => TransferInquiry(),
          '/transfer': (context) => Transfer(),
          '/transfer_report': (context) => TransferReport(),
          '/history': (context) => History(),
          '/logout': (context) => AccountPage(),
        },
      ),
    );
  }
}
