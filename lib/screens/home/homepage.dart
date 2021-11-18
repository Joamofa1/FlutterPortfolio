import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/components/areas_of_interest.dart';
import 'package:portfolio/screens/home/components/contact.dart';
import 'package:portfolio/screens/home/components/footer.dart';
import 'package:portfolio/screens/home/components/home_banner.dart';
import 'package:portfolio/screens/home/components/my_projects.dart';
import 'package:portfolio/screens/home/components/tools.dart';
import 'package:portfolio/screens/main_screen/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        MyProjects(),
        AreasOfInterest(),
        ToolsLibrary(),
        Contact(),
        Footer(),
      ],
    );
  }
}
