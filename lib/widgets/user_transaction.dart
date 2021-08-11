import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './transaction_list.dart';
import './new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 300,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Food',
      amount: 500,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Beverage',
      amount: 100,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, int txamount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: txamount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
