import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:deevstiktok/Auth/login_navigator.dart';
import 'package:deevstiktok/Components/continue_button.dart';
import 'package:deevstiktok/Components/entry_field.dart';
import 'package:deevstiktok/Locale/locale.dart';
import 'package:flutter/material.dart';

import '../../../Theme/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginBody();
  }
}

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: transparentColor),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      padding: EdgeInsets.all(16.0),
      child: FadedSlideAnimation(
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.youWillNeed!,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: secondaryColor),
            ),
            Spacer(),
            EntryField(
              label: AppLocalizations.of(context)!.enterPhone,
            ),
            CustomButton(
              onPressed: () =>
                  Navigator.pushNamed(context, LoginRoutes.registration),
            ),
            Spacer(flex: 8),
            Text(
              AppLocalizations.of(context)!.orContinueWith!,
              textAlign: TextAlign.center,
            ),
            Spacer(),
            CustomButton(
              icon: Image.asset(
                'assets/icons/ic_fb.png',
                height: 20,
              ),
              text: '   ${AppLocalizations.of(context)!.facebookAccount}',
              color: fbColor,
              onPressed: () =>
                  Navigator.pushNamed(context, LoginRoutes.socialLogin),
            ),
            CustomButton(
              icon: Image.asset(
                'assets/icons/ic_ggl.png',
                height: 20,
              ),
              text: '   ${AppLocalizations.of(context)!.googleAccount}',
              color: secondaryColor,
              textColor: darkColor,
              onPressed: () =>
                  Navigator.pushNamed(context, LoginRoutes.socialLogin),
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
