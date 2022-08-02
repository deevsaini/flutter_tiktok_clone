import 'package:flutter/material.dart';
import 'package:deevstiktok/Theme/colors.dart';

class AudioDetails {
  final String image;
  final String title;
  final String subtitle;

  AudioDetails(this.image, this.title, this.subtitle);
}

class Audios extends StatelessWidget {
  Audios({Key? key}) : super(key: key);
  final List<AudioDetails> _audioDetails = [
    AudioDetails("assets/audio_thum.jpg", "Dance on Heaven", "JAmes Carlo"),
    AudioDetails(
        "assets/audio_thum.jpg", "Nothing can stop me", "Taylor Haydon"),
    AudioDetails("assets/audio_thum.jpg", "I drop a picture", "JAmes Carlo"),
    AudioDetails(
        "assets/audio_thum.jpg", "Breaup up with your girl", "JAmes Carlo"),
    AudioDetails("assets/audio_thum.jpg", "I wear my crown", "JAmes Carlo"),
    AudioDetails(
        "assets/audio_thum.jpg", "I wanna be your end game", "JAmes Carlo"),
    AudioDetails("assets/audio_thum.jpg", "Come and put cha", "JAmes Carlo"),
    AudioDetails("assets/audio_thum.jpg", "Dance on Heaven", "JAmes Carlo"),
    AudioDetails("assets/audio_thum.jpg", "Dance on Heaven", "JAmes Carlo"),
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: _audioDetails.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 24),
                leading: Container(
                  width: 34,
                  height: 34,
                  child: Image.asset(
                    _audioDetails[index].image,
                  ),
                ),
                title: Text(
                  _audioDetails[index].title,
                  style: TextStyle(color: secondaryColor, fontSize: 14),
                ),
                subtitle: Text(
                  _audioDetails[index].subtitle,
                  style: theme.textTheme.caption,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.bookmark_border,
                      color: secondaryColor,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CircleAvatar(
                      backgroundColor: darkColor,
                      child: Icon(
                        Icons.play_arrow,
                        color: secondaryColor,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 1,
                color: darkColor,
                width: double.infinity,
              ),
            ],
          );
        });
  }
}
