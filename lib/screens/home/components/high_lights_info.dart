import 'package:flutter/material.dart';
import 'package:flutter_profile/componentes/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'high_light.dart';

class HighLightsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      counter: AnimatedCounter(
                        value: 119,
                        text: 'K+',
                      ),
                      label: 'Subscribers',
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 70,
                        text: 'K+',
                      ),
                      label: 'GitHub Projects',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      counter: AnimatedCounter(
                        value: 50,
                        text: 'K+',
                      ),
                      label: 'Flutter Projects',
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 50,
                        text: 'K+',
                      ),
                      label: 'Flutter Projects',
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: 'K+',
                  ),
                  label: 'Subscribers',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 70,
                    text: 'K+',
                  ),
                  label: 'GitHub Projects',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 50,
                    text: 'K+',
                  ),
                  label: 'Flutter Projects',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 50,
                    text: 'K+',
                  ),
                  label: 'Flutter Projects',
                ),
              ],
            ),
    );
  }
}
