import 'package:flutter/material.dart';
import 'package:hm_shop/pages/view_cart.dart';
import 'package:hm_shop/pages/view_category.dart';
import 'package:hm_shop/pages/view_home.dart';
import 'package:hm_shop/pages/view_my.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Map<String, dynamic>> _tabList = [
    {"icon": Icons.home_outlined, "active_icon": Icons.home, "label": "首页"},
    {
      "icon": Icons.category_outlined,
      "active_icon": Icons.category,
      "label": "分类",
    },
    {
      "icon": Icons.shopping_cart_outlined,
      "active_icon": Icons.shopping_cart,
      "label": "购物车",
    },
    {
      "icon": Icons.account_circle_outlined,
      "active_icon": Icons.account_circle,
      "label": "我的",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MainPage")),
      body: Center(child: SafeArea(child: IndexedStack(
        index: _currentIndex,
        children: _getIndexStackChildren(),
      ))),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: _getTabBarWidget(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getTabBarWidget() {
    return List.generate(_tabList.length, (int index) {
      return BottomNavigationBarItem(
        icon: Icon(_tabList[index]["icon"]),
        activeIcon: Icon(_tabList[index]["active_icon"]),
        label: _tabList[index]["label"],
      );
    });
  }

  List<Widget> _getIndexStackChildren() {
    return [
      HomeView(),
      CategoryView(),
      CartView(),
      MyView()
    ];
  }
}
