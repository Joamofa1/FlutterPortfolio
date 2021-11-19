import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({Key? key}) : super(key: key);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: defaultPadding),
        color: Color(0xFF24242E),
        child: Row(
          children: [
            Spacer(),
            IconButton(
              onPressed: () {
                _launchURL(
                    'https://www.linkedin.com/in/franklin-osei-258b7210a');
              },
              icon: Icon(
                FontAwesomeIcons.linkedin,
                color: Colors.blue,
              ),
            ),
            IconButton(
              onPressed: () {
                _launchURL('https://github.com/franklinosei');
              },
              icon: Icon(
                FontAwesomeIcons.github,
                color: kTextColor,
              ),
            ),
            IconButton(
              onPressed: () {
                _launchURL(
                    'https://twitter.com/iamdveloper?t=GlBKEOxyQFu_QHn-1ATc9g&s=09');
              },
              icon: Icon(
                FontAwesomeIcons.twitter,
                color: Colors.blue,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
