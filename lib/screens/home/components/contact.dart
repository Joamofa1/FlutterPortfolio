import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/responsive.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String message = '';

  final FocusNode _fNameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _messageFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text(
          'Contact Me',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: kTextColor),
        ),
        const SizedBox(height: 20),
        Center(
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              // alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: Responsive.isDesktop(context)
                  ? MediaQuery.of(context).size.width * 0.5
                  : MediaQuery.of(context).size.width * 0.9,
              height: Responsive.isDesktop(context)
                  ? MediaQuery.of(context).size.height * 0.7
                  : MediaQuery.of(context).size.height * 0.65,
              child: Container(
                padding: const EdgeInsets.all(30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        cursorColor: primaryColor,
                        textInputAction: TextInputAction.next,
                        focusNode: _fNameFocus,
                        onFieldSubmitted: (term) {
                          _fieldFocusChange(context, _fNameFocus, _emailFocus);
                        },
                        style: const TextStyle(color: kTextColor),
                        decoration:
                            textInputDecoration.copyWith(labelText: 'Name*'),
                        validator: (val) =>
                            val!.isEmpty ? "Please enter first name" : null,
                        onChanged: (val) {
                          setState(() {
                            name = val;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        cursorColor: primaryColor,
                        textInputAction: TextInputAction.next,
                        focusNode: _emailFocus,
                        onFieldSubmitted: (term) {
                          _fieldFocusChange(
                              context, _emailFocus, _messageFocus);
                        },
                        style: const TextStyle(color: kTextColor),
                        decoration:
                            textInputDecoration.copyWith(labelText: 'Email*'),
                        validator: (val) => val!.isEmpty
                            ? "Please enter your emaill address"
                            : null,
                        onChanged: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        // maxLength: null,
                        maxLines: 5,
                        minLines: null,
                        // enabled: true,
                        cursorColor: primaryColor,
                        textInputAction: TextInputAction.done,
                        focusNode: _messageFocus,
                        onChanged: (term) {
                          setState(() {
                            message = term;
                          });
                        },
                        style: const TextStyle(color: kTextColor),
                        decoration: textInputDecoration.copyWith(
                          labelText: 'Message*',
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      MaterialButton(
                          color: primaryColor,
                          height: 50,
                          onPressed: () {},
                          elevation: 10,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Send Message',
                                  style: TextStyle(color: kTextColor),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  FontAwesomeIcons.arrowRight,
                                  size: 20,
                                  color: kTextColor,
                                ),
                              ]))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void _fieldFocusChange(
    BuildContext context, FocusNode fNameFocus, FocusNode emailFocus) {}
