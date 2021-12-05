import 'package:flutter/material.dart';
import 'package:daily_expenses/item.dart';
import 'package:daily_expenses/item_list.dart';
import 'package:daily_expenses/user_input.dart';

class user_item extends StatefulWidget {
  @override
  State<user_item> createState() => user_item_state();
}

class user_item_state extends State<user_item> {
  List<item> itemList = [];

  void addItem(String title, double amount) {
    final addItem = item(
        id: DateTime.now().toString(),
        items: title,
        amount: amount,
        add_date: DateTime.now());
    setState(() {
      itemList.add(addItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        user_input(itemFunction: addItem),
        item_list(itemList: itemList)
      ],
    );
  }
}
