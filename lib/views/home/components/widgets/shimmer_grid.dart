import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:shimmer/shimmer.dart';
// import 'package:portfolio/state/state_manager.dart';

class ShimmerGrid extends StatelessWidget {
  // final List<Project> projects;
  const ShimmerGrid({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
    // required this.projects,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    // List<Project> _list = [];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => Shimmer.fromColors(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bgColor,
            ),
            height: Responsive.isMobile(context) ? 250 : 100,
            width: Responsive.isMobile(context) ? 250 : 100,
          ),
          baseColor: Colors.grey.withOpacity(0.2),
          highlightColor: secondaryColor),
    );
  }
}
