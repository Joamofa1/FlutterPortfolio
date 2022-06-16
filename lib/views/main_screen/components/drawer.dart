import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/views/main_screen/components/my_info.dart';
import 'package:portfolio/views/main_screen/components/widget/devOps.dart';
import 'package:portfolio/views/main_screen/components/widget/download_cv.dart';
import 'package:portfolio/views/main_screen/components/widget/ml_tools.dart';
import 'package:portfolio/views/main_screen/components/widget/mobile.dart';
import 'package:portfolio/views/main_screen/components/widget/residence.dart';
import 'package:portfolio/views/main_screen/components/widget/socialMedia.dart';

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
                controller: ScrollController(),
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children:  [
                    const AreaInfoText(
                      title: "Residence",
                      text: "Ghana",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Accra",
                    ),
                    const SizedBox(height: defaultPadding),
                    const Tools(),
                    const MobileTools(),
                    const DevOps(),
                    Divider(thickness: 1, color: Colors.white.withOpacity(0.15)),
                    const DownloadCV(),
                    const SocialLinks(),
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
