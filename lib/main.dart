import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense App',
      home: myHome(),
    );
  }
}

class myHome extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(id: '1', title: 'newshoes', amount: 100, date: DateTime.now()),
    Transaction(id: '2', title: 'Groceries', amount: 250, date: DateTime.now()),
    Transaction(id: '3', title: 'Ball', amount: 10, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EXpense'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.yellow,
              child: Text('Chart'),
              elevation: 5,
            ),
          ),
          Column(
            children: transaction.map((tx) {
              return Card(
                child: Text(tx.title),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
