import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:deevstiktok/Components/entry_field.dart';
import 'package:deevstiktok/Locale/locale.dart';
import 'package:deevstiktok/Routes/routes.dart';
import 'package:deevstiktok/Theme/colors.dart';
import 'package:deevstiktok/Theme/style.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatBody();
  }
}

class ChatBody extends StatefulWidget {
  @override
  _ChatBodyState createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/user/user2.png'),
            ),
            title: Text(
              'Test User',
              style: TextStyle(color: secondaryColor),
            ),
            onTap: () =>
                Navigator.pushNamed(context, PageRoutes.userProfilePage),
          ),
        ),
        body: FadedSlideAnimation(
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              //   FadedScaleAnimation(MessageStream()),
              Expanded(child: MessageStream()),
              Container(
                color: darkColor,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: EntryField(
                  prefix: IconButton(
                    icon: Icon(Icons.tag_faces),
                    color: secondaryColor,
                    onPressed: () {},
                  ),
                  controller: _messageController,
                  hint: AppLocalizations.of(context)!.writeYourComment,
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.send,
                      color: mainColor,
                    ),
                    onPressed: () {
                      _messageController.clear();
                    },
                  ),
                  counter: null,
                ),
              ),
            ],
          ),
          beginOffset: Offset(0, 0.3),
          endOffset: Offset(0, 0),
          slideCurve: Curves.linearToEaseOut,
        ));
  }
}

class MessageStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    final List<MessageBubble> messageBubbles = [
      MessageBubble(
        text: locale.comment9,
        time: '01:02 pm',
//      isDelivered: false,
        isMe: true,
      ),
      MessageBubble(
        text: locale.comment10,
        time: '01:02 pm',
//      isDelivered: false,
        isMe: false,
      ),
      MessageBubble(
        text: locale.comment11,
        time: '01:00 pm',
//      isDelivered: false,
        isMe: true,
      ),
      MessageBubble(
        text: locale.comment12,
        time: '01:00 pm',
//      isDelivered: false,
        isMe: true,
      ),
      MessageBubble(
        text: locale.comment13,
        time: '11:59 am',
//      isDelivered: false,
        isMe: false,
      ),
      MessageBubble(
        text: locale.comment14,
        time: '11:58 am',
//      isDelivered: false,
        isMe: false,
      ),
    ];
    return ListView(
      physics: BouncingScrollPhysics(),
      reverse: true,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      children: messageBubbles,
    );
  }
}

class MessageBubble extends StatelessWidget {
  final bool? isMe;
  final String? text;
  final String? time;
  final bool? isDelivered;

  MessageBubble({this.text, this.time, this.isMe, this.isDelivered});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: isMe!
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  time!,
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(width: 12.0),
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 2 / 3),
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: radius,
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    text!,
                    textAlign: TextAlign.end,
                    style: TextStyle(height: 1.4),
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 2 / 3),
                  decoration: BoxDecoration(
                    color: disabledTextColor,
                    borderRadius: radius,
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    text!,
                    style: TextStyle(height: 1.4),
                  ),
                ),
                SizedBox(width: 12.0),
                Text(
                  time!,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
    );
  }
}
