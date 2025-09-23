import 'package:flutter/material.dart';
import 'package:jiofamily/src/models/transaction.dart';
import 'package:jiofamily/src/services/db_service.dart';

class TransactionProvider with ChangeNotifier {
  List<TransactionModel> _transactions = [];

  List<TransactionModel> get transactions => _transactions;

  Future<void> loadTransactions() async {
    _transactions = await DBService.instance.getTransactions();
    notifyListeners();
  }

  Future<void> addTransaction(TransactionModel tx) async {
    await DBService.instance.insertTransaction(tx);
    await loadTransactions();
  }

  Future<void> deleteTransaction(int id) async {
    await DBService.instance.deleteTransaction(id);
    await loadTransactions();
  }
}
