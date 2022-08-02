import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:deevstiktok/BottomNavigation/Home/following_tab.dart';
import 'package:deevstiktok/BottomNavigation/Home/home_page.dart';
import 'package:deevstiktok/Theme/colors.dart';

class Grid {
  Grid(this.imgUrl, this.views);
  String imgUrl;
  String views;
}

class TabGrid extends StatelessWidget {
  final IconData? icon;
  final List? list;
  final Function? onTap;
  final IconData? viewIcon;
  final String? views;

  TabGrid(this.list, {this.icon, this.onTap, this.viewIcon, this.views});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: list!.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2 / 2.5,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FollowingTabPage(
                        videos1, imagesInDisc1, false,
                        variable: 1))),
            child: FadedScaleAnimation(
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(list![index]), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      viewIcon,
                      color: secondaryColor,
                      size: 15,
                    ),
                    views != null ? Text(' ' + views!) : SizedBox.shrink(),
                    Spacer(),
                    Icon(
                      icon,
                      color: mainColor,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
