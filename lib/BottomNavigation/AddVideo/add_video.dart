import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:deevstiktok/Locale/locale.dart';
import 'package:deevstiktok/Routes/routes.dart';
import 'package:deevstiktok/Theme/colors.dart';

class AddVideo extends StatefulWidget {
  @override
  _AddVideoState createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FadedSlideAnimation(
        Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/video 2.png',
              fit: BoxFit.fill,
              height: ht,
              width: wt,
            ),
            Positioned(
              top: 28,
              left: 4,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: secondaryColor,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Positioned(
              width: wt,
              bottom: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.camera_front,
                    color: secondaryColor,
                  ),
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: videoCall,
                      child: Icon(
                        Icons.videocam,
                        color: secondaryColor,
                        size: 30,
                      ),
                    ),
                    onTap: () => Navigator.pushNamed(
                        context, PageRoutes.addVideoFilterPage),
                  ),
                  Icon(
                    Icons.flash_off,
                    color: secondaryColor,
                  ),
                ],
              ),
            ),
            Positioned(
              width: wt,
              bottom: 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: secondaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppLocalizations.of(context)!.swipeUpForGallery!,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
