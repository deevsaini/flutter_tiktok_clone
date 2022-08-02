import 'package:flutter/material.dart';
import 'package:deevstiktok/Components/thumb_tile.dart';

class ThumbList extends StatelessWidget {
  final List<String> mediaList;

  ThumbList(this.mediaList);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: 8.0),
      height: screenWidth / 3,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: mediaList.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ThumbTile(mediaList[index]);
          }),
    );
  }
}
