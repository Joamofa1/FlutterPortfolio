import 'package:flutter/material.dart';
import 'package:portfolio/screens/main_screen/components/my_info.dart';

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
          children: const [
            MyInfo(),
            
            
          ],
        ),
      ),
    );
  }
}
