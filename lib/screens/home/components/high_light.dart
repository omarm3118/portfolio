import 'package:flutter/material.dart';
import 'package:flutter_profile/componentes/animated_counter.dart';

import '../../../constants.dart';

class HighLight extends StatelessWidget {
  const HighLight({required this.counter, required this.label});

  final AnimatedCounter counter;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
