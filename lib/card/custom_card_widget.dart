import 'package:flutter/material.dart';
import 'package:wchat/card/base_card.dart';

class CustomCardWidget extends BaseCard {
  @override
  BaseCardState createState() => _CustomCardWidget();
}

class _CustomCardWidget extends BaseCardState {
  @override
  Widget buildTitle(String title) {
    return super.buildTitle("本周推荐");
  }

  @override
  Widget buildSubTitle(String subTitle, {Color color}) {
    return super.buildSubTitle("送你一天无限卡 全场书籍免费读", color: Color(0xffb99444));
  }

  @override
  Widget buildBottomContent() {
    //http://sjbz.fd.zol-img.com.cn/t_s1080x1920c/g2/M00/0E/0A/ChMlWl7YXmuIHLGsABLH891NZKoAAPvwgKqYcAAEsgL827.jpg
    /*return Expanded(
        child: Row(children: <Widget>[
          Expanded(
              child: Image.network(
                "http://sjbz.fd.zol-img.com.cn/t_s768x1280c/g2/M00/0E/0A/ChMlWl7YXmuIHLGsABLH891NZKoAAPvwgKqYcAAEsgL827.jpg",
                fit: BoxFit.cover,
              ))
        ]));*/
    return Expanded(
        child: Container(
      constraints: BoxConstraints.expand(),
      child: Image.network(
        "http://sjbz.fd.zol-img.com.cn/t_s1080x1920c/g2/M00/0A/0F/ChMlWl7N01SINF_MAA7-4gzA1Y0AAPg7gE-oroADv76760.jpg",
//        "http://sjbz.fd.zol-img.com.cn/t_s768x1280c/g2/M00/0E/0A/ChMlWl7YXmuIHLGsABLH891NZKoAAPvwgKqYcAAEsgL827.jpg",
        fit: BoxFit.cover,
      ),
    ));
  }
}
