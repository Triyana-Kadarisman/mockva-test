import 'package:flutter/material.dart';
import 'package:mockva/model/account_model.dart';
import 'package:mockva/model/user_model.dart';
import 'package:mockva/providers/account_provider.dart';
import 'package:mockva/providers/user_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controllerAccount = TextEditingController();
  final controllerName = TextEditingController();
  final controllerBalance = TextEditingController();

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    UserModel account = userProvider.user;

    Widget inputAccount() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Column(
              children: [
                TextField(
                  obscureText: true,
                  controller: controllerAccount,
                  decoration: InputDecoration(
                    // labelText: 'Name',
                    // hintText: 'Input Name',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    enabled: true,
                    filled: true,
                    fillColor: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget inputName() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Column(
              children: [
                TextField(
                  obscureText: true,
                  controller: controllerName,
                  decoration: InputDecoration(
                    // labelText: 'Name',
                    // hintText: 'Input Name',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    enabled: true,
                    filled: true,
                    fillColor: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget inputBalance() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Column(
              children: [
                TextField(
                  obscureText: true,
                  controller: controllerBalance,
                  decoration: InputDecoration(
                    // labelText: 'Name',
                    // hintText: 'Input Name',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    enabled: true,
                    filled: true,
                    fillColor: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Mockva Mobile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Account Number'),
          ),
          inputAccount(),
          ListTile(
            title: Text('Name'),
          ),
          inputName(),
          ListTile(
            title: Text('Balance'),
          ),
          inputBalance(),
        ],
      ),
    );
  }
}
