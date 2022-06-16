import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/responsive.dart';

class InterestCard extends StatelessWidget {
  final Widget icon;
  final String title;
  final String description;

  const InterestCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              height: 40,
            ),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              description,
              maxLines: Responsive.isMobileLarge(context) ? 4 : 5,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.notoSans().copyWith(
                height: 1.5,
                fontSize: 15,
                color: bodyTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
