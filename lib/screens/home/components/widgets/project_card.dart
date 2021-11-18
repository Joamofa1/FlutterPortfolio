import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: Image(
//             image: NetworkImage(project.imageUrl),
//             fit: BoxFit.cover,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.only(
//             bottom: 10,
//           ),
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//               colors: [
//                 Colors.black45,
//                 Colors.black54,
//                 Colors.transparent,
//               ],
//             ),
//           ),
//         ),
//         const Positioned(
//           child: Text(
//             'Hello',
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//           top: 100,
//         ),
//       ],
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => _launchURL(project.projectUrl),
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage('assets/images/projectImg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          // color: secondaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                project.title,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: kTextColor, fontSize: 20),
              ),
              // const Spacer(),
              Text(
                project.description,
                maxLines: Responsive.isMobileLarge(context) ? 5 : 6,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(height: 1.5, color: kTextColor),
              ),
              const Spacer(),
              // TextButton(
              //   onPressed: () {
              //     launch(project.projectUrl);
              //   },
              //   child: const Text(
              //     "Read More >>",
              //     style: TextStyle(color: primaryColor),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
