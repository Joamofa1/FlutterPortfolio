import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
// import 'package:portfolio/models/skill.dart';
import 'package:portfolio/utils/animated_progress_indicator.dart';

class Tools extends StatelessWidget {
  // final List<Skill> skills;

  const Tools({
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
        Divider(thickness: 1, color: Colors.white.withOpacity(0.2)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Machile Learning",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 100,
          label: "Python",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 90,
          label: "Computer Vision(Tensorflow)",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 90,
          label: "NLP(Spacy/Tensorflow)",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 90,
          label: "Deep Learning(Pytorch/Tensorflow)",
        ),
      ],
    );
  }
}
