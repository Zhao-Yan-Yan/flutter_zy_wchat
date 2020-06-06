import 'package:flutter/material.dart';
import 'package:wchat/card/base_card.dart';

class CardFree extends BaseCard {
  @override
  _CardFreeState createState() => _CardFreeState();
}

class _CardFreeState extends BaseCardState {
  @override
  Widget buildTitle(String title) {
    return super.buildTitle("免费听书馆");
  }

  @override
  Widget buildSubTitle(String subTitle, {Color color = Colors.grey}) {
    return super.buildSubTitle("第109期");
  }

  @override
  Widget buildBottomContent() {
    return Expanded(
      child: Container(
        child: Stack(
          children: <Widget>[
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.58),
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
              shrinkWrap: true,
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return _buildItem(index);
              },
            ),
            _buildFreeButton()
          ],
        ),
      ),
    );
  }

  Widget _buildItem(int index) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).showSnackBar(
            SnackBar(content: Text("当前点击第$index项")));
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: _buildRoundViewGroup(Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints.expand(),
                    child: index % 2 == 0
                        ? Image.network(
                      "https://img3.sycdn.imooc.com/5c77ae6409ebb16300000000-360-202.png",
                      fit: BoxFit.cover,
                    )
                        : Image.network(
                      "https://img4.mukewang.com/szimg/5ed0bbc908af61c706000338-360-202.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  _buildPlayIcon(),
                  _buildOriginPrice(),
                ],
              )),
            ),
            _buildItemTitle(index)
          ],
        ),
      ),
    );
  }

  Widget _buildPlayIcon() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.black38),
      child: Icon(
        Icons.play_arrow,
        color: Colors.white,
      ),
    );
  }

  Widget _buildOriginPrice() {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(color: Colors.black38),
        padding: EdgeInsets.symmetric(vertical: 3),
        alignment: Alignment.center,
        child: Text(
          "原价 100.00",
          style: TextStyle(fontSize: 10, color: Colors.white),
        ),
      ),
      bottom: 0,
      left: 0,
      right: 0,
    );
  }

  Widget _buildItemTitle(int index) {
    return Container(
      child: Text(
        "书名$index",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 12, color: Colors.black),
      ),
      margin: EdgeInsets.only(top: 6),
    );
  }

  Widget _buildFreeButton() {
    ///可以控制宽高占比
    ///FractionallySizedBox(
    ///  widthFactor: 1,
    ///  heightFactor: 1,
    ///);
    return Positioned(
        left: 0,
        bottom: 0,
        right: 0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: RaisedButton(
            color: Colors.blue,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Text(
              "免费领取",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () => {},
          ),
        ));
  }

  _buildRoundViewGroup(Widget child) {
    return PhysicalModel(
      borderRadius: BorderRadius.circular(5),
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: child,
      ),
    );
  }
}
