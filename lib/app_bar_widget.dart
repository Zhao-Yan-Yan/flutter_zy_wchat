import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;

    return Container(
      margin: EdgeInsets.only(top: padding.top + 10, left: 30, right: 30),
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 5),
              child: Text(
                "长安十二时辰",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
          ),
          Container(
            width: 1,
            margin: EdgeInsets.only(right: 15),
            height: 20,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          Text(
            "搜索",
            style: TextStyle(fontSize: 13, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
