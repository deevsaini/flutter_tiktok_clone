import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:deevstiktok/Components/tab_grid.dart';

class MorePage extends StatelessWidget {
  final String? title;
  final List? list;

  MorePage({this.title, this.list});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(title!),
          ),
          body: FadedSlideAnimation(
            TabGrid(list),
            beginOffset: Offset(0.3, 0.3),
            endOffset: Offset(0, 0),
            slideCurve: Curves.linearToEaseOut,
          )),
    );
  }
}
