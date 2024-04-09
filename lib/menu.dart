import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:works_app/about_me.dart';
import 'package:works_app/cardModel.dart';
import 'package:works_app/dataContainteWidget.dart';
import 'package:works_app/theme.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  bool isOpen = false;
  final keyOne = GlobalKey();
  List<CardModel> cards = [
    CardModel(
        name: 'Space animation',
        description: 'A 3D simulation of outer space and night sky',
        image: 'images/sky.jpg',
        color: const Color.fromARGB(255, 243, 225, 206),
        tools:
            'flutter_animate,flextras,extra_alignments,gap,provider,rnd,vector_math',
        duration: '20 days',
        links: 'https://github.com/SanaAltarabishi/space_animation.git'),
    CardModel(
        name: 'ToDo App',
        description: 'help you to stay organized & productive ',
        //by managing your tasks with with free cloud storage services
        image: 'images/todo.png',
        color: const Color.fromARGB(255, 243, 225, 206),
        tools: 'Dio,Flutter_bloc,Mock storage',
        duration: '10 days',
        links: 'https://github.com/SanaAltarabishi/Todo_app.git'),
    CardModel(
        name: 'Animation learning app',
        description: 'Using animation to make the learning fun ',
        image: 'images/learn.png',
        color: const Color.fromARGB(255, 243, 225, 206),
        tools: 'rive,shared_preferences,get_it,animated_text_kit',
        duration: '1 week',
        links: 'https://github.com/SanaAltarabishi/animation_app.git'),
    CardModel(
        name: 'coffee shop Ui',
        description:
            'Using brown shades,in order to create a cozy aesthetic coffee shop environment',
        image: 'images/coffee.png',
        color: const Color.fromARGB(255, 243, 225, 206),
        tools: 'Provider',
        duration: '1 week',
        links: 'https://github.com/SanaAltarabishi/coffee_app.git'),
    CardModel(
        name: 'Quiz App',
        description:
            'Designed to engage users in enjoyable educational activities ',
        image: 'images/Quiz.png',
        color: const Color.fromARGB(255, 243, 225, 206),
        tools: 'flutter_bloc,dio,shimmer',
        duration: '1 month',
        links: 'https://github.com/SanaAltarabishi/quiz.git'),
    CardModel(
        name: 'animation lamp Ui ',
        description:
            'Designed to simulate the interaction of turning a lamp on or off',
        image: 'images/lamp.png',
        color: const Color.fromARGB(255, 243, 225, 206),
        tools: 'only flutter widget',
        duration: '1 day',
        links: 'https://github.com/SanaAltarabishi/animated_Lamp.git'),
    CardModel(
        name: 'Clothing app Ui',
        description:
            'Applying stylish designs to clothing and its accessories and submitting reviews on items',
        image: 'images/laza.jpg',
        color: const Color.fromARGB(255, 243, 225, 206),
        tools: 'shared_preferences,get_it',
        duration: '1 day',
        links: 'https://github.com/SanaAltarabishi/animated_Lamp.git'),
  ];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => ShowCaseWidget.of(context).startShowCase([
        keyOne,
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final currentTheme = themeProvider.currentTheme;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: currentTheme == lightTheme
                      ? currentTheme.primaryColorLight
                      : currentTheme.primaryColorDark,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    isOpen
                        ? const BoxShadow(
                            color: Colors.black,
                            offset: Offset(2, 2),
                            blurRadius: 5,
                          )
                        : const BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2, 2),
                            blurRadius: 5,
                          ),
                  ]),
              width: screenWidth,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sana Al Tarabishi',
                          style: GoogleFonts.bagelFatOne(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              //MaterialPageRoute(builder:(context) => AboutMePage(),)
                              PageTransition(
                                  child: AboutMePage(),
                                  type: PageTransitionType.fade));
                        },
                        child: Text('About Me',
                            style: GoogleFonts.bagelFatOne(
                              fontSize: 15,
                            ).copyWith(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Visibility(
              visible: isOpen,
              child: SingleChildScrollView(
                child: Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    margin: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(2, 2),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25)),
                        color: Color.fromARGB(255, 243, 225, 206)),
                    width: screenWidth,
                    height: 500,
                    child: ListView.builder(
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        final card = cards[index];
                        return buildDataContaine(
                          model: card,
                        );
                        // .animate()
                        // .then(delay: .1.seconds, duration: .3.seconds);
                      },
                    )
                        .animate()
                        .fadeIn(delay: .3.seconds, duration: .6.seconds)),
              ),
            ),
          ),
          Positioned(
              //switch
              right: -6,
              top: 360,
              width: 28,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isOpen = !isOpen;
                    themeProvider.toggleTheme();
                  });
                },
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(seconds: 10),
                      width: 20,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    AnimatedPositioned(
                      top: isOpen ? 32 : 2,
                      duration: const Duration(seconds: 1),
                      child: Showcase(
                        overlayOpacity: 0,
                        tooltipBackgroundColor:
                            const Color.fromARGB(255, 243, 225, 206),
                        key: keyOne,
                        description: 'Pull the blind down ',
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          width: 14,
                          height: 14,
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
            //Rope
            top: 80,
            right: 13,
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 2,
              height: isOpen ? 320 : 285,
              color: Colors.black,
            ).animate(delay: 2.seconds),
          ),
        ],
      ),
    );
  }
}
