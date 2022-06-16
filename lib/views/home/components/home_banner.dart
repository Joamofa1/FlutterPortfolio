import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1.8 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg1.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "FRANKLIN OSEI",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                          ),
                ),
                Text(
                  "Software Engineer | Data Scientist",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                          )
                      : Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                            fontSize: 17,
                          ),
                ),

                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                const SizedBox(height: defaultPadding),

                //add textgraphy
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      const Text(
                        '<>',
                        style: TextStyle(color: primaryColor),
                      ),
                      DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Agne',
                          color: kTextColor,
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: const Duration(seconds: 2),
                          animatedTexts: [
                            TypewriterAnimatedText('Hello, 👋👋👋'),
                            TypewriterAnimatedText(
                                'I am a Software Engineer...👩‍💻'),
                            TypewriterAnimatedText('I build...⚙️'),
                            // TypewriterAnimatedText(
                            //   'I can get your machine learning models up and running...🚀🚀🚀',
                            //   textAlign: TextAlign.justify,
                            // ),
                            TypewriterAnimatedText(Responsive.isMobileLarge(
                                    context)
                                ? 'Scroll to see all the cool \nthings I can do...👇👇👇'
                                : 'Scroll to see all the cool things I can do...👇👇👇'),

                            TypewriterAnimatedText(Responsive.isMobileLarge(
                                    context)
                                ? "Don't forget to leave a \nmessage...😊😊😊"
                                : "Don't forget to leave a message...😊😊😊"),
                          ],
                          onTap: () {},
                        ),
                      ),
                      const Text(
                        '</>',
                        style: TextStyle(color: primaryColor),
                      ),
                    ],
                  ),
                ),

                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/projects');
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      "View Projects",
                      style: GoogleFonts.notoSans().copyWith(color: darkColor),
                    ),
                  ),

                // if (Responsive.isMobileLarge(context))
                //   const SizedBox(height: defaultPadding),
              ],
            ),
          )
        ],
      ),
    );
  }
}
