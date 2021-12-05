import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:daily_expenses/item.dart';
import 'package:intl/intl.dart';

class item_list extends StatelessWidget {
  final List<item> itemList;
  const item_list({required this.itemList});

  //   List itemList2 = [
  //   {
  //     id: '1',
  //     title: 'Flutter Book',
  //     amount: 450.0,
  //     add_date: DateTime.now(),

  //   }

  //     id: '2',
  //     title: 'Flutter Book',
  //     amount: 450.0,
  //     add_date: DateTime.now(),

  // ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                    color: Colors.lightBlue,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Item List",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )),
                Container(
                  height: 500,
                  child: ListView.builder(
                      itemCount: itemList.length,
                      itemBuilder: (ctx, index) {
                        return Container(
                          margin:
                              EdgeInsets.only(left: 10, right: 10, bottom: 8),
                          child: Card(
                            color: Colors.greenAccent,
                            elevation: 10,
                            child: Container(
                              padding: EdgeInsets.only(top: 5, bottom: 5),
                              child: Row(
                                children: [
                                  Container(
                                    decoration:
                                        BoxDecoration(border: Border.all()),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    child: Text(
                                        "${itemList[index].amount.toString()} Tk"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text("${itemList[index].items}"),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(DateFormat.yMMMEd()
                                          .format(itemList[index].add_date))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
