import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AreaInfoText extends StatelessWidget {
  AreaInfoText({
    required this.title,
    required this.text,
  });

  final String title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(text)
        ],
      ),
    );
  }
}
