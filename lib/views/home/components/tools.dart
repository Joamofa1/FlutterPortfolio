import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';

class ToolsLibrary extends StatelessWidget {
  const ToolsLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: defaultPadding,
      ),
      // decoration: const BoxDecoration(color: secondaryColor),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          // spacing: 30,
          children: const [
            Image(
              image: AssetImage('assets/images/tf.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(width: 20),
            Image(
              image: AssetImage('assets/images/python.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(width: 20),
            Image(
              image: AssetImage('assets/images/dart.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(width: 20),
            Image(
              image: AssetImage('assets/images/sklearn.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(width: 20),
            Image(
              image: AssetImage('assets/images/keras.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(width: 20),
            Image(
              image: AssetImage('assets/images/react.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(width: 20),
            Image(
              image: AssetImage('assets/images/html.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(width: 20),
            Image(
              image: AssetImage('assets/images/css.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(width: 20),
            Image(
              image: AssetImage('assets/images/js.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(width: 20),
            Image(
              image: AssetImage('assets/images/flask.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(width: 20),
            Image(
              image: AssetImage('assets/images/django.png'),
              height: 40,
              width: 40,
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
