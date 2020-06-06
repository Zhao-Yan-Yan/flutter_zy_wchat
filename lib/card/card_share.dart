import 'package:flutter/material.dart';
import 'package:wchat/card/base_card.dart';

class CardShare extends BaseCard {
  @override
  _CardShareState createState() => _CardShareState();
}

class _CardShareState extends BaseCardState {
  @override
  Widget buildTitle(String title) {
    return super.buildTitle("分享得联名卡");
  }

  @override
  Widget buildSubTitle(String subTitle, {Color color = Colors.grey}) {
    return super.buildSubTitle("分享给朋友最多可获得12天无限卡");
  }

  @override
  Widget buildSubExtTitle() {
    return Padding(
      padding: EdgeInsets.only(left: 10, bottom: 4),
      child: Text(
        "/  第19期",
        style: TextStyle(fontSize: 10),
      ),
    );
  }

  @override
    Widget buildBottomContent() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.only(bottom: 15),
          constraints: BoxConstraints.expand(),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image.network(
                  "http://sjbz.fd.zol-img.com.cn/t_s1080x1920c/g2/M00/0A/07/ChMlWl7MjoqIdiQiABCdcTo-UEkAAPe3QMhkToAEJ2J944.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "1237814人 · 参与活动 ",
                  style: TextStyle(
                    fontSize: 10,color: Colors.grey
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
}
