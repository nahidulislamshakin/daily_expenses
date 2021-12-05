import 'package:flutter/material.dart';
import 'package:daily_expenses/item_list.dart';
import 'package:daily_expenses/user_input.dart';
import 'package:daily_expenses/user_item.dart';

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        //  backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Mess management",
            style: TextStyle(color: Colors.lightBlue),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 30,
                child: Center(
                  child: Text(
                    "Add Your Item",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                //  ),
              ),

              //   SingleChildScrollView(
              //  child:
              Container(
                  child: Column(
                children: [
                  //   SingleChildScrollView(
                  // child:
                  // Container(
                  // child:
                  user_item(),
                  // ),
                  //    )
                ],
              )),
              //   ),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
