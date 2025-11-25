import 'package:flutter/material.dart';

class MainHot extends StatefulWidget {
  const MainHot({super.key});

  @override
  State<MainHot> createState() => _MainHotState();
}

class _MainHotState extends State<MainHot> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      alignment: Alignment.center,
      height: 200,
      child: Text("爆款推荐", style: TextStyle(color: Colors.white),),
    );
  }
}
