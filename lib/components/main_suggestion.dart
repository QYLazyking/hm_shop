import 'package:flutter/material.dart';

class MainSuggestion extends StatefulWidget {
  const MainSuggestion({super.key});

  @override
  State<MainSuggestion> createState() => _MainSuggestionState();
}

class _MainSuggestionState extends State<MainSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        height: 300,
        child: Text("推荐", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
