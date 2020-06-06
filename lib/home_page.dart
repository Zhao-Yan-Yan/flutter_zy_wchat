import 'package:flutter/material.dart';
import 'package:wchat/content_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  final ContentPageController _contentPageController = ContentPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContentWidget(
        contentPageController:_contentPageController,
        pageChangeCallback: (index) {
          setState(() {
            _currentIndex = index;
          });
        },),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          _buildNavItem("本周", Icons.ac_unit),
          _buildNavItem("分享", Icons.account_balance),
          _buildNavItem("免费", Icons.cake),
          _buildNavItem("长安", Icons.android)
        ],
        onTap: (index) {
          _contentPageController.setCurrentPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  _buildNavItem(String title,
      IconData iconData,) {
    return BottomNavigationBarItem(
        title: Text(title),
        icon: Icon(
          iconData,
          color: Colors.grey,
        ),
        activeIcon: Icon(
          iconData,
          color: Colors.blueAccent,
        ));
  }
}
