import 'package:flutter/material.dart';
import 'package:mockva/providers/user_provider.dart';
import 'package:provider/provider.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

bool isLoading = false;

TextEditingController _controllerUsername = TextEditingController(text: '');
TextEditingController _controllerPassword = TextEditingController(text: '');
// final _formKey = GlobalKey<FormState>();

var text = 'Gagal Login';

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);

    handleSignIn() async {
      setState(() {
        isLoading = true;
      });
      if (await userProvider.login(
        username: _controllerUsername.text,
        password: _controllerPassword.text,
      )) {
        Navigator.pushNamed(context, '/main');
      } else {
        print(_controllerUsername.text);
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Text(
              text,
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
      }

      setState(() {
        isLoading = false;
      });
      // print(nameController);
    }

    Widget header() {
      return Container(
          margin: EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Mockva Mobile'),
            ],
          ));
    }

    Widget _textFormField() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          // key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _controllerUsername,
                validator: (value) => value == '' ? "Don't Empty" : null,
                decoration: const InputDecoration(labelText: 'Username'),
              ),
              TextFormField(
                controller: _controllerPassword,
                validator: (value) => value == '' ? "Don't Empty" : null,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: handleSignIn,
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              header(),
              SizedBox(height: 50),
              _textFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
