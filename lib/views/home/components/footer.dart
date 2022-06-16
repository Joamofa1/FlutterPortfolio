import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

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
      padding: const EdgeInsets.only(top: 50),
      // decoration: BoxDecoration(color: kFooterBg),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(color: secondaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _launchURL('https://github.com/franklinosei');
                    },
                    child: const Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _launchURL(
                          'https://www.linkedin.com/in/franklin-osei-258b7210a');
                    },
                    child: const Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _launchURL(
                          'https://twitter.com/iamdveloper?t=GlBKEOxyQFu_QHn-1ATc9g&s=09');
                    },
                    child: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20, top: 30),
            // height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(color: secondaryColor),
            child: Center(
              child: Column(
                children: [
                  Text(
                    '\u00a9 Franklin Osei ${DateTime.now().year}',
                    style: GoogleFonts.notoSans().copyWith(color: kTextColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Made with Flutter',
                    style: GoogleFonts.notoSans().copyWith(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
