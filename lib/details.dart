// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:works_app/cardModel.dart';

class DetailsPage extends StatelessWidget {
  final CardModel model;
  DetailsPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  Widget build(BuildContext context) {
    Color color = //Color.fromARGB(255, 243, 225, 206);
        Colors.brown.shade400;
    Future<void> _onOpen(LinkableElement link) async {
      if (!await launchUrl(Uri.parse(link.url))) {
        throw Exception('Could not launch ${link.url}');
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 243, 225, 206),
              ),
            ).animate().fadeIn(delay: .4.seconds, duration: .3.seconds),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(2, 2),
                    blurRadius: 5,
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              width: 300, //!make it mediaQuery
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                      Color.fromARGB(255, 243, 225, 206), BlendMode.modulate),
                  child: Image.asset(
                    model.image,
                    fit: BoxFit.fill,
                  ).animate().rotate(duration: .5.seconds),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.all(8.0),
            width: 600,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Project name :',
                  style: GoogleFonts.bagelFatOne(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)
                      .copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(model.name,
                        speed: const Duration(milliseconds: 80),
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.all(8.0),
            width: 600,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description :',
                  style: GoogleFonts.bagelFatOne(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)
                      .copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(model.description,
                        speed: const Duration(milliseconds: 80),
                        textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(left: 10, right: 10),
            width: 600,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tools used :',
                  style: GoogleFonts.bagelFatOne(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)
                      .copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(model.tools,
                        speed: const Duration(milliseconds: 80),
                        textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.all(8),
            width: 600,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GitHub links:',
                    style: GoogleFonts.bagelFatOne(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black)
                        .copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SelectableLinkify(
                    onOpen: _onOpen,
                    linkStyle:
                        const TextStyle(fontSize: 15, color: Colors.black),
                    text: model.links,
                  ).animate(delay: 5.seconds)
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.all(8),
            width: 600,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Time invested:',
                  style: GoogleFonts.bagelFatOne(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)
                      .copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(model.duration,
                        speed: const Duration(milliseconds: 80),
                        textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      )),
    );
  }
}
