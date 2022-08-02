import 'package:flutter/material.dart';
import 'package:deevstiktok/Theme/colors.dart';

class PostThumbTile extends StatefulWidget {
  final String mediaListData;

  PostThumbTile(this.mediaListData);
  @override
  _PostThumbTileState createState() => _PostThumbTileState();
}

class _PostThumbTileState extends State<PostThumbTile> {
  bool check = false;
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Positioned(
          child: GestureDetector(
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(opacity), BlendMode.dstATop),
                child: Container(
                  child: Image.asset(
                    widget.mediaListData,
                    fit: BoxFit.fill,
                  ),
                  margin: EdgeInsets.only(right: 8.0),
                  height: screenWidth / 3,
                  width: screenWidth / 4.25,
                  decoration: BoxDecoration(
                    /*image: DecorationImage(
                        image: AssetImage(widget.mediaListData),
                        fit: BoxFit.fill),*/
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  check ? check = false : check = true;
                  opacity == 1 ? opacity = 0.4 : opacity = 1;
                  //opacity = 0.4;
                  //check = true;
                });
              }),
        ),
        Positioned(
          top: screenWidth / 8,
          left: screenWidth / 10,
          child: GestureDetector(
            onTap: () {
              setState(() {
                check ? check = false : check = true;
                opacity == 1 ? opacity = 0.4 : opacity = 1;
              });
            },
            child: check
                ? CircleAvatar(
                    radius: 15,
                    backgroundColor: mainColor,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ))
                : SizedBox(),
          ),
        ),
      ],
    );
  }
}
