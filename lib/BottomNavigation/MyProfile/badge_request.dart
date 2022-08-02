import 'package:flutter/material.dart';
import 'package:deevstiktok/Components/continue_button.dart';
import 'package:deevstiktok/Locale/locale.dart';
import 'package:deevstiktok/Theme/colors.dart';
import 'package:deevstiktok/Theme/style.dart';

class BadgeRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(locale.verifiedBadgeRequest!),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              locale.provide!,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          ListTile(
            title: Text(
              locale.clickCurrent! + '\n',
              style: TextStyle(fontSize: 14),
            ),
            subtitle: Text(
              locale.clickNow!,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: mainColor),
            ),
            trailing: Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: radius,
                color: lightTextColor,
              ),
              child: Icon(
                Icons.camera_alt,
                size: 20.0,
                color: mainColor,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          ListTile(
            title: Text(
              locale.uploadGovt! + '\n',
              style: TextStyle(fontSize: 14),
            ),
            subtitle: Text(
              locale.uploadNow!,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: mainColor),
            ),
            trailing: Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: radius,
                color: lightTextColor,
              ),
              child: Icon(
                Icons.file_upload,
                size: 20.0,
                color: mainColor,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: CustomButton(
              text: locale.requestFor,
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Text(
            '\n' + locale.itWillTake! + '\n\n',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
