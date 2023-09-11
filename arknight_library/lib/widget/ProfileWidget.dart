import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.98,
          height: MediaQuery.of(context).size.height * 0.08,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.12,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://64.media.tumblr.com/e2737d236a230a70d7c2cd362f6e77c3/5828cd1ac5de3062-6c/s1280x1920/265217f966d50afe66cab43459366d51809748b8.jpg'),
                        fit: BoxFit.fill),
                    color: Colors.black,
                    shape: BoxShape.circle),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.height * 0.065,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedTextKit(
                            repeatForever: true,
                            pause: Duration(seconds: 6),
                            animatedTexts: [
                              TypewriterAnimatedText("Yudho Sakti Rama S.A",
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500))
                            ])),
                    Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AnimatedTextKit(
                            repeatForever: true,
                            pause: Duration(seconds: 8),
                            animatedTexts: [
                              TypewriterAnimatedText(
                                  "Arknight Game Information",
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500))
                            ]))
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.06,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 28,
                    )),
              )
            ],
          ),
        )
      ],
    );
  }
}
