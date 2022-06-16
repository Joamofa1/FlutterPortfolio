import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launch(
            "https://drive.google.com/file/d/1Nw9dvDUH9S6rrMrDxVRvXFFe0KYAfi2o/view?usp=sharing");
      },
      child: FittedBox(
        child: Row(
          children: [
            Text(
              "DOWNLOAD CV",
              style: GoogleFonts.notoSans().copyWith(
                color: primaryColor,
              ),
            ),
            const SizedBox(width: defaultPadding / 2),
            // SvgPicture.asset("assets/icons/download.svg")
          ],
        ),
      ),
    );
  }
}
