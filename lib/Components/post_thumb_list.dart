import 'package:flutter/material.dart';
import 'package:deevstiktok/Components/post_thumb_tile.dart';

class PostThumbList extends StatelessWidget {
  final List<String> mediaList;

  PostThumbList(this.mediaList);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenWidth / 3,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: mediaList.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return PostThumbTile(mediaList[index]);
          }),
    );
  }
}
