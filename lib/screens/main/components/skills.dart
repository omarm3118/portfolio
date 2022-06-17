import 'package:flutter/material.dart';
import 'package:flutter_profile/componentes/animated_progress_indicator.dart';

import '../../../constants.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding:
          const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        // Now we need to animate it
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: "Flutter",
                percentage: 0.8,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: "Firebase",
                percentage: 0.7,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: "MongoDB",
                percentage: 0.6,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
