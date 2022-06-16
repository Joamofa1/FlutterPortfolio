import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/controllers/projects_controller/projects_controller.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/views/portfolio/components/projects_grid.dart';

import '../../home/components/widgets/shimmer_grid.dart';

class MainProjects extends StatelessWidget {
  MainProjects({
    Key? key,
  }) : super(key: key);
  final ProjectsController projectsController = Get.find();
  @override
  Widget build(BuildContext context) {
    // AsyncValue<List<Project>> projects = watch(projectStateFuture);

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

          Obx(
            () => projectsController.isLoaing.value
                ? const ShimmerGrid()
                : Responsive(
                    mobile: ProjectsGrid(
                      crossAxisCount: 1,
                      childAspectRatio: 1.7,
                      projects: projectsController.response.value.data ?? [],
                    ),
                    mobileLarge: ProjectsGrid(
                      crossAxisCount: 2,
                      projects: projectsController.response.value.data ?? [],
                    ),
                    tablet: ProjectsGrid(
                      childAspectRatio: 1.1,
                      projects: projectsController.response.value.data ?? [],
                    ),
                    desktop: ProjectsGrid(
                      projects: projectsController.response.value.data ?? [],
                    ),
                  ),
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
