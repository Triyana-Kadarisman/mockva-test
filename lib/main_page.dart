import 'package:flutter/material.dart';
import 'package:mockva/account_page.dart';
import 'package:mockva/history.dart';
import 'package:mockva/home.dart';
import 'package:mockva/providers/user_provider.dart';
import 'package:mockva/transfer_inquiry.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    UserProvider authProvider = Provider.of<UserProvider>(context);
    Widget customBottomNav() {
      return ClipRRect(
        // borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            height: 70,
            child: BottomNavigationBar(
              backgroundColor: Colors.grey[600],
              currentIndex: currentIndex,
              onTap: (value) {
                print(value);
                setState(() {
                  currentIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Icon(
                      Icons.home,
                      size: 30,
                      // color: currentIndex == 0
                      //     ? primaryColor
                      //     : const Color(0xff808191),
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Icon(
                      Icons.transfer_within_a_station,
                      size: 30,
                      // color: currentIndex == 1
                      //     ? primaryColor
                      //     : const Color(0xff808191),
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Icon(
                      Icons.history,
                      size: 30,
                      // color: currentIndex == 2
                      //     ? primaryColor
                      //     : const Color(0xff808191),
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Icon(
                      Icons.settings,
                      size: 30,
                      // color: currentIndex == 3
                      //     ? primaryColor
                      //     : const Color(0xff808191),
                    ),
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return TransferInquiry();
          break;
        case 2:
          return History();
          break;
        case 3:
          return AccountPage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
