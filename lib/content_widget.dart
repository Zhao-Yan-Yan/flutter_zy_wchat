import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wchat/app_bar_widget.dart';
import 'package:wchat/card/base_card.dart';
import 'package:wchat/card/card_free.dart';
import 'package:wchat/card/card_share.dart';
import 'package:wchat/card/card_special.dart';
import 'package:wchat/card/custom_card_widget.dart';

class ContentWidget extends StatefulWidget {
  final ValueChanged<int> pageChangeCallback;
  final ContentPageController contentPageController;

  const ContentWidget(
      {Key key, this.pageChangeCallback, this.contentPageController})
      : super(key: key);

  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  void initState() {
    initSystemUi();
    widget.contentPageController?._pageController = _pageController;
    super.initState();
  }

  void initSystemUi(){
    var systemUiOverlayStyle = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );

    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffedeef0),
            Color(0xffe6e7e9),
          ],
        )),
        child: Column(
          children: <Widget>[
            AppBarWidget(),
            Expanded(
              child: PageView(
                onPageChanged: widget.pageChangeCallback,
                controller: _pageController,
                children: <Widget>[
                  _buildCardView(CustomCardWidget()),
                  _buildCardView(CardShare()),
                  _buildCardView(CardFree()),
                  _buildCardView(CardSpecial()),
                ],
              ),
            )
          ],
        ));
  }

  _buildCardView(BaseCard baseCard) {
    return Container(
      margin: EdgeInsets.all(8),
      child: baseCard,
    );
  }
}

class ContentPageController {
  PageController _pageController;

  setCurrentPage(int index) {
    _pageController?.jumpToPage(index);
  }
}
