import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Recommendation.dart';

import '../../../constants.dart';
class RecommendationCard extends StatelessWidget {
  const RecommendationCard({required this.recommendation});

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(
        defaultPadding,
      ),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name.toString(),
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            recommendation.source.toString(),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            recommendation.text.toString(),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
