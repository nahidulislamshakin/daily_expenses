import 'package:flutter/material.dart';
import 'package:daily_expenses/my_app.dart';

class user_input extends StatelessWidget {
  final Function itemFunction;
  user_input({required this.itemFunction});

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitData() {
    final enterTitle = titleController.text;
    final enterAmount = double.parse(amountController.text);
    if (enterTitle.isEmpty || enterAmount < 0) return;
    itemFunction(enterTitle, enterAmount);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.blue.shade100,
      child: Column(
        children: [
          TextField(
            //mouseCursor: Colors.amber,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter item name",
              hintText: "title",
            ),
            controller: titleController,
            onSubmitted: (_) => submitData,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter amount",
              hintText: "amount",
            ),
            controller: amountController,
            onSubmitted: (_) => submitData,
          ),
          Container(
            //  width: double.infinity,
            margin: EdgeInsets.all(10),
            child: RaisedButton(
              onPressed: submitData,
              child: Text("ADD"),
            ),
          ),
        ],
      ),
    );
  }
}
