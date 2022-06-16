import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/views/home/components/widgets/interest_card.dart';
import 'package:portfolio/views/home/components/widgets/interests_grid.dart';

class AreasOfInterest extends StatelessWidget {
  const AreasOfInterest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> interests = [
      const InterestCard(
        icon: Icon(
          FontAwesomeIcons.robot,
          size: 30,
        ),
        title: 'Machine Learning',
        description:
            "I'm fascinated by the theory and applications of machine learning, and I'm eager to learn more about it.",
      ),
      const InterestCard(
        icon: Icon(
          FontAwesomeIcons.mobile,
          size: 30,
        ),
        title: 'Mobile App Development',
        description:
            'Building powerful and responsive cross-platform commercial mobile applications.',
      ),
      const InterestCard(
        icon: Icon(
          FontAwesomeIcons.comments,
          size: 30,
        ),
        title: 'NLP',
        description:
            'I use text analytics and machine learning to solve some of the most difficult business problems.',
      ),
      const InterestCard(
        icon: Icon(
          FontAwesomeIcons.cogs,
          size: 30,
        ),
        title: 'ML system Deployment',
        description:
            'I develop and implement cutting-edge machine learning technologies.',
      ),
      const InterestCard(
        icon: Icon(FontAwesomeIcons.cloudDownloadAlt, size: 30),
        title: 'Cloud Computing',
        description:
            'I utilize AWS and GCP to design and deploy machine learning systems.',
      ),
      const InterestCard(
        icon: Icon(
          FontAwesomeIcons.laptopCode,
          size: 30,
        ),
        title: 'Web Development',
        description:
            'I create attractive, responsive online applications that address real-world business issues.',
      ),
    ];

    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            'Areas of Interest',
            style: GoogleFonts.notoSans().copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          const SizedBox(height: 20),
          Responsive(
            mobile: InterestsGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.3,
              interests: interests,
            ),
            mobileLarge: InterestsGridView(
              crossAxisCount: 2,
              interests: interests,
            ),
            tablet: InterestsGridView(
              childAspectRatio: 1.1,
              interests: interests,
            ),
            desktop: InterestsGridView(
              interests: interests,
            ),
          )
        ],
      ),
    );
  }
}
