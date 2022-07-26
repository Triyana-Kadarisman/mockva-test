import 'package:flutter/material.dart';

class TransferReport extends StatelessWidget {
  const TransferReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Account Source',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '123456789789',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Account Source Name',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Honey Wesley Cloney',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Account Destination',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '0895412825235',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Account Destination',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Ridwan Jordan Smith',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Amount',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '1,000,000',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Reference Number',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '0910299382910',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Transaction TimeStamp',
                style: TextStyle(fontSize: 20),
              ),
              Row(
                children: [
                  Text(
                    '2020-03-04',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '19:20:03',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Status',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'SUCCESS',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
