import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'side_menu.dart';
class Knowledges extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return                   Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Divider(),
       Padding(
         padding:
         const EdgeInsets.symmetric(vertical: defaultPadding),
         child: Text(
           "Knowledge's",
           style: Theme.of(context).textTheme.subtitle2,
         ),
       ),
       KnowledgeText(text: "Flutter, Dart"),
       KnowledgeText(text: "Android, Java"),
       KnowledgeText(text: "GIT Knowledge"),
       KnowledgeText(text: "Figma Knowledge"),

     ],
   );
  }

}