import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
import 'project_card.dart';

class MyProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ProjectGridView(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectGridView(),
          tablet: ProjectGridView(
            childAspectRatio: 1.1,
          ),
          mobileLarge: ProjectGridView(),
        ),
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({this.childAspectRatio = 1.3});

  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 390,
        mainAxisExtent: 250,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}

//
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 3,
// childAspectRatio: 1.3,
// crossAxisSpacing: defaultPadding,
// mainAxisSpacing: defaultPadding,
// ),
