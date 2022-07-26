import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

// Buat Class Sesuai dengan Response API
class cHistory {
  DateTime date;
  double amount;
  String ref;
  String destination;

  /** Buat Constructor
   * Pada Saat Data Di Ambil contructor harus terisi
   **/
  cHistory({
    required this.date,
    required this.amount,
    required this.ref,
    required this.destination,
  });

  /** Buat perubahan dari json
   * Harus Sama Dengan Response di API
   */
  factory cHistory.fromJson(Map<String, dynamic> json) {
    return cHistory(
      date: DateTime.parse(json['transactionTimestamp']),
      amount: json['amount'],
      ref: json['clientRef'],
      destination: json['accountDstId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'transactionTimestamp': date.toString(),
      'amount': amount,
      'clientRef': ref,
    };
  }
}
