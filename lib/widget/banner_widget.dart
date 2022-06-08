import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.3,
        color: Colors.cyan,
        child: //animate()
        Center(child: Text("OLX" ,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),),
        )
        );
  }
}

class animate extends StatelessWidget {
  const animate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  width: 45.0,
  child: DefaultTextStyle(
    style: const TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
    ),
    child: AnimatedTextKit(
      animatedTexts: [
        FadeAnimatedText('do IT!'),
        FadeAnimatedText('do it RIGHT!!'),
        FadeAnimatedText('do it RIGHT NOW!!!'),
      ],
      onTap: () {
        print("Tap Event");
      },
    ),
  ),
);
  }
}