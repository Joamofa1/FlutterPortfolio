import 'package:flutter/material.dart';
import 'package:portfolio/screens/main_screen/main_screen.dart';
import 'package:portfolio/screens/portfolio/components/main_projects.dart';
import 'package:portfolio/screens/portfolio/components/portfolio_banner.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [
      PortfolioBanner(),
      MainProjects(),
    ]);
  }
}
