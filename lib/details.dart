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
      Color color =//Color.fromARGB(255, 243, 225, 206);
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 243, 225, 206),
            ),
          ).animate().fadeIn(delay: .4.seconds, duration: .3.seconds),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
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
                                      colorFilter: ColorFilter.mode(Color.fromARGB(255, 243, 225, 206), BlendMode.modulate),

                  child: Image.asset(
                    model.image,
                    fit: BoxFit.fill,
                  ).animate().rotate(duration: .5.seconds),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
         Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.all(8.0),
            width: 600,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
              color:color,
            
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
                SizedBox(
                  height: 3,
                ),
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(model.name,
                        speed: Duration(milliseconds: 80),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.all(8.0),
            width: 600,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
              color:color,
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
                SizedBox(
                  height: 3,
                ),
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(model.description,
                        speed: Duration(milliseconds: 80),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(8),
            margin:  EdgeInsets.only(left: 10, right: 10),
            width: 600,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
              color:color,
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
                SizedBox(
                  height: 3,
                ),
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(model.tools,
                        speed: Duration(milliseconds: 80),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ],
                ),
              ],
            ),
          ),
        SizedBox(
            height: 20,
          ),
          Container(
            margin:  EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.all(8),
            width: 600,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
              color:color,
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
                  SizedBox(
                    height: 3,
                  ),
                  SelectableLinkify(
                    onOpen: _onOpen,
                    linkStyle:
                        TextStyle(fontSize: 15, color: Colors.black),
                    text: model.links,
                  ).animate(delay: 5.seconds)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin:  EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.all(8),
            width: 600,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
              color:color,
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
                SizedBox(
                  height: 3,
                ),
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(model.duration,
                        speed: Duration(milliseconds: 80),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ],
                ),
              ],
            ),
          ),
        
          SizedBox(
            height: 15,
          ),
        ],
      )),
    );
  }
}
