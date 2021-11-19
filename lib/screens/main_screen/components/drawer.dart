import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/screens/main_screen/components/my_info.dart';
import 'package:portfolio/screens/main_screen/components/widget/devOps.dart';
import 'package:portfolio/screens/main_screen/components/widget/download_cv.dart';
import 'package:portfolio/screens/main_screen/components/widget/ml_tools.dart';
import 'package:portfolio/screens/main_screen/components/widget/mobile.dart';
import 'package:portfolio/screens/main_screen/components/widget/residence.dart';
import 'package:portfolio/screens/main_screen/components/widget/socialMedia.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: const [
                    AreaInfoText(
                      title: "Residence",
                      text: "Ghana",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Accra",
                    ),
                    SizedBox(height: defaultPadding),
                    Tools(),
                    MobileTools(),
                    DevOps(),
                    Divider(),
                    DownloadCV(),
                    SocialLinks(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
