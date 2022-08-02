import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:deevstiktok/Components/continue_button.dart';
import 'package:deevstiktok/Components/entry_field.dart';
import 'package:deevstiktok/Locale/locale.dart';
import 'package:deevstiktok/Theme/colors.dart';

import '../../login_navigator.dart';

//register page for registration of a new user
class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.signUpNow!),
      ),

      //this column contains 3 textFields and a bottom bar
      body: FadedSlideAnimation(
        RegisterForm(),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: transparentColor),
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        ),
        height: MediaQuery.of(context).size.width * 1,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //name textField
            EntryField(
              textCapitalization: TextCapitalization.words,
              label: locale.fullName,
            ),
            //email textField
            EntryField(
              textCapitalization: TextCapitalization.none,
              label: locale.email,
              keyboardType: TextInputType.emailAddress,
            ),

            //phone textField
            EntryField(
              label: locale.phoneNumber,
              keyboardType: TextInputType.number,
            ),
            Spacer(),
            Text(
              locale.weWillSend! + '\n',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),

            //continue button
            CustomButton(
                text: locale.continueText,
                onPressed: () {
                  Navigator.pushNamed(context, LoginRoutes.verification);
                })
          ],
        ),
      ),
    );
  }
}
