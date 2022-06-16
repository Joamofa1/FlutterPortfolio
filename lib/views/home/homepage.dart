import 'package:flutter/material.dart';
import 'package:portfolio/views/home/components/areas_of_interest.dart';
import 'package:portfolio/views/home/components/contact.dart';
import 'package:portfolio/views/home/components/footer.dart';
import 'package:portfolio/views/home/components/home_banner.dart';
import 'package:portfolio/views/home/components/my_projects.dart';
import 'package:portfolio/views/home/components/tools.dart';

import '../main_screen/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        const HomeBanner(),
        MyProjects(),
        const AreasOfInterest(),
        const ToolsLibrary(),
        const Contact(),
        const Footer(),
      ],
    );
  }
}
