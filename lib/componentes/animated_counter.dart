import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({required this.value, required this.text});

  final int value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) {
        return Text(
          "$value$text",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: primaryColor),
        );
      },
    );
  }
}
