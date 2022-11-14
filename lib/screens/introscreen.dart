import 'package:flutter/material.dart';
import 'package:medme/screens/loginsignup.dart';
import 'package:medme/screens/screen_one.dart';
import 'package:medme/screens/screen_three.dart';
import 'package:medme/screens/screen_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class introscreen extends StatefulWidget {
  const introscreen({super.key});

  @override
  State<introscreen> createState() => _introscreenState();
}

class _introscreenState extends State<introscreen> {
  bool onlastPage = false;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onlastPage = (index == 2);
            });
          },
          children: [FirstScreen(), SecondScreen(), ThirdScreen()],
        ),

        // Bottom Controllers------------------------------------------------

        Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            alignment: const Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //skip text---

                // const Text('Skip'),

                //Slider indicator----

                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const ScrollingDotsEffect(
                    dotColor: Colors.white,
                    dotWidth: 8,
                    dotHeight: 8,
                    activeDotColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),

                //next and done text----------

                GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: onlastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return loginsignup();
                            }));
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 2),
                                color: const Color(
                                  0xFFd9e252,
                                ),
                                
                                borderRadius: BorderRadius.circular(6)),
                            child: const Text(
                              'Get Started',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      : const Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 36,
                        ),
                )
              ],
            )),
      ]),
    );
  }
}
