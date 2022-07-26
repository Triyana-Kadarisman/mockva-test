import 'package:flutter/material.dart';
import 'package:mockva/model/account_model.dart';
import 'package:mockva/model/user_model.dart';
import 'package:mockva/providers/account_provider.dart';
import 'package:mockva/providers/user_provider.dart';
import 'package:mockva/service/user_service.dart';
import 'package:provider/provider.dart';

// Berpindah halaman
class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    UserModel account = userProvider.user;

    deleteData() async {
      var sessionId = account.id;

      bool response = await UserService().deleteData(sessionId!);
      UserService().deleteData(sessionId);
      if (response == true) {
        print("Berhasil Logout");
        Navigator.pushNamed(context, '/');
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Text(
              'Gagal Logout',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            actions: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                ),
              ),
            ],
          ),
        );
        print("Gagal Logout");
      }

      // }

      //
      // } else {
      //   print(userProvider.deleteData(id));
      //
      //   print('Data Tidak Berhasil Di Hapus');
      // }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              deleteData();
            },
            child: const Text('Logout'),
          ),
        ),
      ),
    );
  }
}
