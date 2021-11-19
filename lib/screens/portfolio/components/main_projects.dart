import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/screens/home/components/widgets/project_grid.dart';
import 'package:portfolio/screens/home/components/widgets/shimmer_grid.dart';
import 'package:portfolio/state/state_manager.dart';
import 'package:portfolio/utils/responsive.dart';

class MainProjects extends ConsumerWidget {
  const MainProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<List<Project>> projects = watch(projectStateFuture);

    // List<Project> _list = [];

    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Hi, I'm glad to see you here, below are some of my favorite projects I built during my free time. Enjoy 😊",
              style:
                  Theme.of(context).textTheme.headline6!.copyWith(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: defaultPadding),
          projects.when(
            data: (project) {
              return Responsive(
                mobile: ProjectsGridView(
                  crossAxisCount: 1,
                  childAspectRatio: 1.7,
                  projects: project,
                ),
                mobileLarge: ProjectsGridView(
                  crossAxisCount: 2,
                  projects: project,
                ),
                tablet: ProjectsGridView(
                  childAspectRatio: 1.1,
                  projects: project,
                ),
                desktop: ProjectsGridView(
                  projects: project,
                ),
              );
            },
            error: (err, _) {
              return const Center(
                child: Text('Error'),
              );
            },
            loading: () {
              return const ShimmerGrid();
            },
          ),
          const SizedBox(
            height: 30,
          ),
          // Center(
          //   child: TextButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, '/projects');
          //     },
          //     child: const Text(
          //       'See More >>',
          //       style: TextStyle(color: primaryColor),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
