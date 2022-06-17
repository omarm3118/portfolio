import 'package:flutter/material.dart';
import 'package:flutter_profile/componentes/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "java",
        ),
      ],
    );
  }
}

