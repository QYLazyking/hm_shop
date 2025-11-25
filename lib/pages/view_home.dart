import 'package:flutter/material.dart';
import 'package:hm_shop/components/main_hot.dart';
import 'package:hm_shop/components/main_more_list.dart';
import 'package:hm_shop/components/main_slider.dart';
import 'package:hm_shop/components/main_suggestion.dart';
import 'package:hm_shop/main.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: _getScrollViewSlivers());
  }

  List<Widget> _getScrollViewSlivers() {
    return [
      SliverToBoxAdapter(child: MainSlider()),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 60,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 80,
                height: 60,
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text("分类$index", style: TextStyle(color: Colors.white)),
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(child: MainSuggestion()),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(child: MainHot()),
              SizedBox(width: 10),
              Expanded(child: MainHot()),
            ],
          ),
        ),
      ),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      MainMoreList()
    ];
  }
}
