import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    "Discover My Amazing \nArt Space!",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headline3!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                  ),
                ),
                if (Responsive.isMobileLarge(context))
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                MyBuildAnimatedText(),
                if (!Responsive.isMobileLarge(context))
                  SizedBox(
                    height: defaultPadding,
                  ),
                if (!Responsive.isMobileLarge(context))
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding,
                        ),
                        backgroundColor: primaryColor,
                      ),
                      child: FittedBox(
                        child: Text(
                          "EXPLORE NOW",
                          style: TextStyle(color: darkColor),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // It applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1!,
      child: FittedBox(
        child: Row(
          children: [
            if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
            if (!Responsive.isMobileLarge(context))
              SizedBox(width: defaultPadding / 2),
            Text("I build "),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  "Responsive web and mobile app.",
                  speed: Duration(milliseconds: 60),
                ),
                TyperAnimatedText(
                  "Complete E-Commerce app UI.",
                  speed: Duration(milliseconds: 60),
                ),
                TyperAnimatedText(
                  "Chat app with dark and light theme.",
                  speed: Duration(milliseconds: 60),
                ),
              ],
            ),
            if(!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
            if(!Responsive.isMobileLarge(context))
            FlutterCodedText(),
          ],
        ),
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(text: "flutter", style: TextStyle(color: primaryColor)),
          TextSpan(text: ">")
        ],
      ),
    );
  }
}
