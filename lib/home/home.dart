import 'package:flutter/material.dart';
import 'package:travel_management/pages/destination.dart';
import 'package:travel_management/pages/home.dart';
import 'package:travel_management/pages/travel_order.dart';

import '../pages/mine.dart';

// 首页
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  /*切换页面*/
  void _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  /// 页面数据
  final List<Widget> _pages = [
    Home(),
    Destination(),
    TravelOrder(),
    Mine(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: buildMyBottomNavigationBar(),
    );
  }

  // 底部导航栏模块
  BottomNavigationBar buildMyBottomNavigationBar() {
    return BottomNavigationBar(
        elevation: 0.0,
        selectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        // selectedLabelStyle: const TextStyle(color: Colors.black),
        currentIndex: _currentIndex,
        onTap: (index) {
          _changePage(index);
        },
        items: [
          BottomNavigationBarItem(
            label: '旅游首页',
            activeIcon: Image.asset(
              'assets/icons/shouye.png',
              width: 25,
              height: 30,
              color: Colors.green,
            ),
            icon: Image.asset(
              'assets/icons/shouye.png',
              width: 20,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: '出行攻略',
            activeIcon: Image.asset(
              'assets/icons/a-dingweidizhi.png',
              width: 25,
              height: 30,
              color: Colors.green,
            ),
            icon: Image.asset(
              'assets/icons/a-dingweidizhi.png',
              width: 20,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: '旅游订单',
            activeIcon: Image.asset(
              'assets/icons/a-dingdanzhangdan.png',
              width: 25,
              height: 30,
              color: Colors.green,
            ),
            icon: Image.asset(
              'assets/icons/a-dingdanzhangdan.png',
              width: 20,
              height: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: '我的',
            activeIcon: Image.asset(
              'assets/icons/wode.png',
              width: 25,
              height: 30,
              color: Colors.green,
            ),
            icon: Image.asset(
              'assets/icons/wode.png',
              width: 20,
              height: 25,
            ),
          ),
        ]);
  }
}
