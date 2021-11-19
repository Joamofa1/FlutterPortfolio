import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: FittedBox(
          child: Row(
            children: const [
              Text(
                "DOWNLOAD CV",
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
              SizedBox(width: defaultPadding / 2),
              // SvgPicture.asset("assets/icons/download.svg")
            ],
          ),
        ),
      ),
    );
  }
}
