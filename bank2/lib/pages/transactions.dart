import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            IconButton(onPressed:() => print("Hello"), icon: const Icon(Icons.arrow_back),),
          ]
        )
      )
    );
  }
}
