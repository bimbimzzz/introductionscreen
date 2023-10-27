import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introductionscreen/page/screen_one.dart';
import 'package:introductionscreen/page/screen_three.dart';
import 'package:introductionscreen/page/screen_two.dart';
import 'package:introductionscreen/screen/homepage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController _controller = PageController();

  bool oneLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                oneLastPage = (index == 2);
              });
            },
            controller: _controller,
            children: const [
              ScreenOne(),
              ScreenTwo(),
              ScreenThree(),
            ],
          ),
          const SizedBox(
            child: Text('Skip'),
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(3);
                  },
                  child: Container(
                    height: 50,
                    width: 90,
                    color: const Color(0xff63FFAF),
                    child: Center(
                      child: Text(
                        'Skip',
                        style: GoogleFonts.poppins(fontSize: 29),
                      ),
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  effect: const SlideEffect(),
                  controller: _controller,
                  count: 3,
                ),
                oneLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) {
                            return const HomePage();
                          }));
                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          color: const Color(0xff63FFAF),
                          child: Center(
                            child: Text(
                              'Done',
                              style: GoogleFonts.poppins(fontSize: 29),
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear);
                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          color: const Color(0xff63FFAF),
                          child: Center(
                            child: Text(
                              'Next',
                              style: GoogleFonts.poppins(fontSize: 29),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
