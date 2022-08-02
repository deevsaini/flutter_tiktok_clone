import 'package:flutter/material.dart';
import 'package:deevstiktok/Components/audios.dart';
import 'package:deevstiktok/Theme/colors.dart';

class AddMusic extends StatelessWidget {
  const AddMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: darkColor,
        appBar: AppBar(
          title: Text("Add Music"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: theme.scaffoldBackgroundColor,
              ),
              margin: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: disabledTextColor),
                    prefixIcon: Icon(
                      Icons.search,
                      color: secondaryColor.withOpacity(0.8),
                    )),
              ),
            ),
            TabBar(
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  text: "Browse",
                ),
                Tab(
                  text: "Saved",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  decoration: BoxDecoration(
                    color: theme.scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 24),
                        child: Text(
                          "Trending Audios",
                          style: theme.textTheme.caption!.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Audios(),
                    ],
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: theme.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24)),
                    ),
                    child: Audios()),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
