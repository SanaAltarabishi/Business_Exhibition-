import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class AboutMePage extends StatefulWidget {
  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 243, 225, 206),
                )).animate().fadeIn(delay: .4.seconds, duration: .3.seconds),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHovered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHovered = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              offset: Offset(2, 2),
                              blurRadius: 3,
                              spreadRadius: 0,
                            )
                          ],
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Color.fromARGB(255, 86, 117, 112))),
                      width: 100,
                      height: 100,
                      child: ClipOval(
                        child: Opacity(
                          opacity: isHovered ? 0.5 : 1.0,
                          child: Image.asset(
                            'images/Beige.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ).animate().fadeIn(delay: .4.seconds, duration: .3.seconds),
                SizedBox(
                  height: 20,
                ), //change into mediaQuery
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          spreadRadius: 0,
                        )
                      ],
                      color: Color.fromARGB(255, 243, 225, 206),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.person_2_rounded,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'MY NAME : ',
                                  style: GoogleFonts.bagelFatOne(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            AnimatedTextKit(animatedTexts: [
                              TyperAnimatedText(
                                  '  Sana Mohamad al Tarabishi                                 ',
                                  speed: Duration(milliseconds: 80),
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ]).animate().fadeIn(
                                delay: .6.seconds, duration: .3.seconds),
                          ]),
                    ),
                  ).animate().fadeIn(delay: .6.seconds, duration: .3.seconds),
                ),

                SizedBox(
                  height: 20,
                ), //change into mediaQuery
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          spreadRadius: 0,
                        )
                      ],
                      color: Color.fromARGB(255, 243, 225, 206),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.menu_book_sharp,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'My university studies : ',
                                  style: GoogleFonts.bagelFatOne(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            AnimatedTextKit(animatedTexts: [
                              TyperAnimatedText(
                                  '  Computer Engineering and Automation at Damascus University',
                                  speed: Duration(milliseconds: 80),
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ]).animate().fadeIn(
                                delay: .6.seconds, duration: .3.seconds),
                          ]),
                    ),
                  ).animate().fadeIn(delay: .8.seconds, duration: .3.seconds),
                ),

                SizedBox(
                  height: 20,
                ), //change into mediaQuery
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          spreadRadius: 0,
                        )
                      ],
                      color: Color.fromARGB(255, 243, 225, 206),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.work_outlined,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'MY JOB: ',
                                  style: GoogleFonts.bagelFatOne(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            AnimatedTextKit(animatedTexts: [
                              TyperAnimatedText(
                                  '  Not yet                                                    ',
                                  speed: Duration(
                                    milliseconds: 80,
                                  ),
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ]).animate().fadeIn(
                                delay: .6.seconds, duration: .3.seconds),
                          ]),
                    ),
                  ).animate().fadeIn(delay: 1.0.seconds, duration: .3.seconds),
                ),

                SizedBox(
                  height: 20,
                ), //change into mediaQuery
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          spreadRadius: 0,
                        )
                      ],
                      color: Color.fromARGB(255, 243, 225, 206),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.email,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'MY Email: ',
                                      style: GoogleFonts.bagelFatOne(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    tooltip: 'COPY',
                                    onPressed: () {
                                      Clipboard.setData(ClipboardData(
                                          text: 'sanaaltarabishi20@gmail.com'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Center(
                                              child: Text('Email copied')),
                                          duration: .4.seconds,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          padding: EdgeInsets.all(8),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.content_copy_rounded,
                                      color: Colors.black,
                                    ),
                                  ).animate().fadeIn(
                                      delay: .6.seconds, duration: .3.seconds),
                                )
                              ],
                            ),
                            // SizedBox(
                            //   height: 2,
                            // ),
                            AnimatedTextKit(animatedTexts: [
                              TyperAnimatedText(
                                  '  sanaaltarabishi20@gmail.com                                ',
                                  speed: Duration(milliseconds: 80),
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ]).animate().fadeIn(
                                delay: .6.seconds, duration: .3.seconds),
                          ]),
                    ),
                  ).animate().fadeIn(delay: 1.2.seconds, duration: .3.seconds),
                ),

                SizedBox(
                  height: 20,
                ), //change into mediaQuery
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          spreadRadius: 0,
                        )
                      ],
                      color: Color.fromARGB(255, 243, 225, 206),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.phone,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'MY Phone: ',
                                      style: GoogleFonts.bagelFatOne(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    tooltip: 'COPY',
                                    onPressed: () {
                                      Clipboard.setData(
                                          ClipboardData(text: '0951298758'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Center(
                                              child: Text('Phone copied')),
                                          duration: .4.seconds,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          padding: EdgeInsets.all(8),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.content_copy_rounded,
                                      color: Colors.black,
                                    ),
                                  ).animate().fadeIn(
                                      delay: .6.seconds, duration: .3.seconds),
                                )
                              ],
                            ),
                            // SizedBox(
                            //   height: 2,
                            // ),
                            AnimatedTextKit(animatedTexts: [
                              TyperAnimatedText(
                                  '  0951000000                                                 ',
                                  speed: Duration(milliseconds: 80),
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ]).animate().fadeIn(
                                delay: .6.seconds, duration: .3.seconds),
                          ]),
                    ),
                  ).animate().fadeIn(delay: 1.4.seconds, duration: .3.seconds),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
