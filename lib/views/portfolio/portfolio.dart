import 'package:flutter/material.dart';
import 'package:portfolio/views/home/components/footer.dart';
import 'package:portfolio/views/main_screen/main_screen.dart';
import 'package:portfolio/views/portfolio/components/main_projects.dart';
import 'package:portfolio/views/portfolio/components/portfolio_banner.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      const PortfolioBanner(),
      MainProjects(),
      const Footer(),
    ]);
  }
}
