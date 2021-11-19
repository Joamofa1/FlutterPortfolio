import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
// import 'package:portfolio/models/skill.dart';
import 'package:portfolio/utils/animated_progress_indicator.dart';

class MobileTools extends StatelessWidget {
  // final List<Skill> skills;

  const MobileTools({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AsyncValue<List<Skill>> skills = watch(SkillStateFuture);

    // List<Widget> temp_list = [];

    // skills.when(data: (skill) {
    //   for (int i = 0; i < skill.length; i++) {
    //     temp_list.add(
    //       AnimatedLinearProgressIndicator(
    //         percentage: skill[i].level.toDouble(),
    //         label: skill[i].name,
    //       ),
    //     );
    //   }
    // }, loading: () {
    //   temp_list.add(const CircularProgressIndicator());
    // }, error: (err, _) {
    //   temp_list.add(const Text('Error'));
    // });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Mobile and Web Apps",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 90,
          label: "Dart(Flutter)",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 90,
          label: "React.js",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 90,
          label: "Flask/Django",
        ),
      ],
    );
  }
}
