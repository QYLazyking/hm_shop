import 'package:flutter/material.dart';

class MainSlider extends StatefulWidget {
  const MainSlider({super.key});

  @override
  State<MainSlider> createState() => _MainSliderState();
}

class _MainSliderState extends State<MainSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text("轮播图", style: TextStyle(color: Colors.white, fontSize: 20),),
    );
  }
}
