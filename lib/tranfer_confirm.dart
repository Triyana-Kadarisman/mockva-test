import 'package:flutter/material.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer'),
      ),
      body: ListView(
        padding: EdgeInsets.all(32),
        children: [
          Text('Account Source'),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // hintText: 'Enter a search term',
            ),
          ),
          SizedBox(height: 15),
          Text('Account Source Name'),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // hintText: 'Enter a search term',
            ),
          ),
          SizedBox(height: 15),
          Text('Account Destination'),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // hintText: 'Enter a search term',
            ),
          ),
          SizedBox(height: 15),
          Text('Account Destination Name'),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // hintText: 'Enter a search term',
            ),
          ),
          SizedBox(height: 15),
          Text('Amount'),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // hintText: 'Enter a search term',
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/transfer_report');
              },
              child: const Text('Confirm')),
        ],
      ),
    );
  }
}
