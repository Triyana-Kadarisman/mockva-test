import 'package:flutter/material.dart';

class TransferInquiry extends StatefulWidget {
  const TransferInquiry({Key? key}) : super(key: key);

  @override
  State<TransferInquiry> createState() => _TransferInquiry();
}

class _TransferInquiry extends State<TransferInquiry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Transfer',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(32),
        children: [
          SizedBox(height: 50),
          Text('Account Destination'),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Account Destination',
            ),
          ),
          SizedBox(height: 15),
          Text('Amount'),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Amount',
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/transfer');
              },
              child: const Text('Transfer')),
        ],
      ),
    );
  }
}
