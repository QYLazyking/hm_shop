import 'package:flutter/material.dart';

class MainMoreList extends StatefulWidget {
  const MainMoreList({super.key});

  @override
  State<MainMoreList> createState() => _MainMoreListState();
}

class _MainMoreListState extends State<MainMoreList> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("商品", style: TextStyle(color: Colors.white),),
        );
      },
    );
  }
}
