import 'package:flutter/material.dart';
import 'package:hm_shop/pages/login_page.dart';
import 'package:hm_shop/pages/main_page.dart';

Widget getRootWidget() {
  return MaterialApp(
    routes: getRootRoutes()
  );
}

Map<String, Widget Function(BuildContext)>  getRootRoutes(){
  return {
    "/": (context) => MainPage(), // 主页路由
    "/login": (context) => LoginPage(), // 登录路由
  };
}