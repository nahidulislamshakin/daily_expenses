import 'package:flutter/material.dart';
import 'package:daily_expenses/widgets/new_transaction.dart';
import 'package:daily_expenses/widgets/transaction_list.dart';
import 'package:daily_expenses/widgets/user_transaction.dart';

class daily_expenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: Text("Daily Expenses"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.lightBlue,
                  child: Center(
                    child: Text(
                      "CHART",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          child: UserTransaction(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
