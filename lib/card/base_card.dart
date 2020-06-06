import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[buildTopContent(), buildBottomContent()],
        ),
      ),
    );
  }

  Widget buildTopContent() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[buildTitle(""), buildSubExtTitle()],
          ),
          buildSubTitle("")
        ],
      ),
    );
  }

  Widget buildTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget buildSubTitle(String subTitle, {Color color = Colors.grey}) {
    return Container(
      child: Text(
        subTitle,
        style: TextStyle(fontSize: 14, color: color),
      ),
      margin: EdgeInsets.only(top: 6),
    );
  }

  Widget buildSubExtTitle() {
    return Container();
  }

  Widget buildBottomContent() {
    return Container();
  }
}
