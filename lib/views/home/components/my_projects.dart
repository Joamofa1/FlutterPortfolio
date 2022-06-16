import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/controllers/projects_controller/projects_controller.dart';
import 'package:portfolio/models/http_response.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/views/home/components/widgets/shimmer_grid.dart';

import '../../portfolio/components/projects_grid.dart';

class MyProjects extends StatelessWidget {
  MyProjects({
    Key? key,
  }) : super(key: key);
  final ProjectsController projectsController = Get.find();
  @override
  Widget build(BuildContext context) {
    // List<Project> _list = [];

    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style: GoogleFonts.notoSans().copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kTextColor,
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
                      projects: projectsController.response.value.data!
                          .take(6)
                          .toList(),
                    ),
                    mobileLarge: ProjectsGrid(
                      crossAxisCount: 2,
                      projects: projectsController.response.value.data!
                          .take(6)
                          .toList(),
                    ),
                    tablet: ProjectsGrid(
                      childAspectRatio: 1.1,
                      projects: projectsController.response.value.data!
                          .take(6)
                          .toList(),
                    ),
                    desktop: ProjectsGrid(
                      projects: projectsController.response.value.data!
                          .take(6)
                          .toList(),
                    ),
                  ),
          ),

          // FutureBuilder<HttpResponse>(
          //   future: projectsController.getProjects(),
          //   builder: (context, snapshot) {
          //     print(snapshot.data);
          //     if (snapshot.hasData) {
          //       print(snapshot.data);
          //       return Responsive(
          //         mobile: ProjectsGrid(
          //           crossAxisCount: 1,
          //           childAspectRatio: 1.7,
          //           projects: snapshot.data!.data,
          //         ),
          //         mobileLarge: ProjectsGrid(
          //           crossAxisCount: 2,
          //           projects: snapshot.data!.data,
          //         ),
          //         tablet: ProjectsGrid(
          //           childAspectRatio: 1.1,
          //           projects: snapshot.data!.data,
          //         ),
          //         desktop: ProjectsGrid(
          //           projects: snapshot.data!.data,
          //         ),
          //       );
          //     }

          //     // if (snapshot.connectionState == ConnectionState.waiting) {
          //     //   return const ShimmerGrid();
          //     // }

          //     // if (snapshot.hasError) {
          //     //   return Text('${snapshot.error}');
          //     // }

          //     return const ShimmerGrid();
          //   },
          // ),
          // projects.when(
          //   data: (project) {
          //     return Responsive(
          //       mobile: ProjectsGridView(
          //         crossAxisCount: 1,
          //         childAspectRatio: 1.7,
          //         projects: project,
          //       ),
          //       mobileLarge: ProjectsGridView(
          //         crossAxisCount: 2,
          //         projects: project,
          //       ),
          //       tablet: ProjectsGridView(
          //         childAspectRatio: 1.1,
          //         projects: project,
          //       ),
          //       desktop: ProjectsGridView(
          //         projects: project,
          //       ),
          //     );
          //   },
          //   error: (err, _) {
          //     return const Center(
          //       child: Text("Couldn't fetch projects..."),
          //     );
          //   },
          //   loading: () {
          //     return const ShimmerGrid();
          //   },
          // ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/projects');
              },
              child: const Text(
                'See More >>',
                style: TextStyle(color: primaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
