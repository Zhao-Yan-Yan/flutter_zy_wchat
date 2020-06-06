import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wchat/card/base_card.dart';

class CardSpecial extends BaseCard {
  @override
  _CardSpecialState createState() => _CardSpecialState();
}

class _CardSpecialState extends BaseCardState {
  @override
  Widget buildTopContent() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 60, top: 30, right: 60),
          decoration: BoxDecoration(color: Color(0xfffffcf7)),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 20, offset: Offset(0, 10))
            ]),
            child: Image.network(
              "http://www.devio.org/io/flutter_beauty/changan_book.jpg",
              height: 200,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
          decoration: BoxDecoration(color: Color(0xfff7fcea)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "长安十二时辰···",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff473b25)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "马伯庸",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color(0xff7d725c)),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffd9bc82),
                        Color(0xffecd9ae),
                      ]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "分享免费领",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget buildBottomContent() {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                "http://www.devio.org/io/flutter_beauty/double_quotes.jpg",
                width: 25,
                height: 25,
              ),
              Text("揭露历史真相")
            ],
          ),
          Center(
            child: Text(
              "更多免费好书领不停 >",
              style: TextStyle(fontSize: 13, color: Colors.blue),
            ),
          )
        ],
      ),
    ));
  }
}
