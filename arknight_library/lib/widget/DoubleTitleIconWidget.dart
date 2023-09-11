import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class DoubleIconAndTitleWidget extends StatelessWidget {
  final String judul;
  final String gambar;
  const DoubleIconAndTitleWidget({
    required this.gambar,
    required this.judul,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          children: [
            Card(
              elevation: 5,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.08,
                color: Colors.grey,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.028,
              child: Card(
                elevation: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.08,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AnimatedTextKit(
                        displayFullTextOnTap: true,
                        isRepeatingAnimation: true,
                        pause: Duration(seconds: 4),
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(judul,
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.13,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(gambar), fit: BoxFit.cover)),
        )
      ],
    );
  }
}
