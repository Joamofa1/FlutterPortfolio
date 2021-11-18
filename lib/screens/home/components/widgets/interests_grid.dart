import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:portfolio/state/state_manager.dart';

class InterestsGridView extends StatelessWidget {
  final List<Widget> interests;
  const InterestsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
    required this.interests,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    // List<Project> _list = [];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: interests.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) =>  interests[index],
    );
  }
}
