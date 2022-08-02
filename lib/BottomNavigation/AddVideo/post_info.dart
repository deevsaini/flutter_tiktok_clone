import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:deevstiktok/Components/continue_button.dart';
import 'package:deevstiktok/Components/entry_field.dart';
import 'package:deevstiktok/Components/post_thumb_list.dart';
import 'package:deevstiktok/Locale/locale.dart';
import 'package:deevstiktok/Routes/routes.dart';
import 'package:deevstiktok/Theme/colors.dart';

class PostInfo extends StatefulWidget {
  @override
  _PostInfoState createState() => _PostInfoState();
}

class _PostInfoState extends State<PostInfo> {
  var icon = Icons.check_box_outline_blank;
  bool isSwitched1 = false;
  bool isSwitched2 = false;

  final List<PostThumbList> thumbLists = [
    PostThumbList(dance),
  ];
  static List<String> dance = [
    'assets/thumbnails/dance/Layer 951.png',
    'assets/thumbnails/dance/Layer 952.png',
    'assets/thumbnails/dance/Layer 953.png',
    'assets/thumbnails/dance/Layer 954.png',
    'assets/thumbnails/dance/Layer 951.png',
    'assets/thumbnails/dance/Layer 952.png',
    'assets/thumbnails/dance/Layer 953.png',
    'assets/thumbnails/dance/Layer 954.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.post!),
        centerTitle: true,
      ),
      body: FadedSlideAnimation(
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.vertical,
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                EntryField(
                  prefix: FadedScaleAnimation(
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.webp'),
                    ),
                  ),
                  label: '    ' + AppLocalizations.of(context)!.describeVideo!,
                ),
                Spacer(),
                Text(
                  AppLocalizations.of(context)!.selectCover! + '\n',
                  style: TextStyle(color: secondaryColor, fontSize: 18),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: thumbLists.length,
                    itemBuilder: (context, index) {
                      return thumbLists[index];
                    }),
                SizedBox(height: 12.0),
                ListTile(
                  title: Text(
                    AppLocalizations.of(context)!.commentOff!,
                    style: TextStyle(color: secondaryColor),
                  ),
                  trailing: Switch(
                    value: isSwitched1,
                    onChanged: (value) {
                      setState(() {
                        isSwitched1 = value;
                        //print(isSwitched1);
                      });
                    },
                    inactiveThumbColor: disabledTextColor,
                    inactiveTrackColor: darkColor,
                    activeTrackColor: darkColor,
                    activeColor: mainColor,
                  ),
                ),
                ListTile(
                  title: Text(
                    AppLocalizations.of(context)!.saveToGallery!,
                    style: TextStyle(color: secondaryColor),
                  ),
                  trailing: Switch(
                    value: isSwitched2,
                    onChanged: (value) {
                      setState(() {
                        isSwitched2 = value;
                        //print(isSwitched2);
                      });
                    },
                    inactiveThumbColor: disabledTextColor,
                    inactiveTrackColor: darkColor,
                    activeTrackColor: darkColor,
                    activeColor: mainColor,
                  ),
                ),
                Spacer(),
                CustomButton(
                  text: AppLocalizations.of(context)!.postVideo,
                  onPressed: () {
                    //Phoenix.rebirth(context);
                    Navigator.pushNamed(context, PageRoutes.bottomNavigation);
                  },
                )
              ],
            ),
          ),
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
