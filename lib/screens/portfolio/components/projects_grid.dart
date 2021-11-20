import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/screens/home/components/widgets/project_card.dart';
// import 'package:portfolio/state/state_manager.dart';

class ProjectsGrid extends StatelessWidget {
  final List<Project> projects;
  const ProjectsGrid({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
    required this.projects,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    // List<Project> _list = [];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: projects[index],
      ),
    );
  }
}
