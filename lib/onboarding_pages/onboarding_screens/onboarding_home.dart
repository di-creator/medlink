import 'package:flutter/material.dart';
import 'package:medlink/Authentication/Login_features/login.dart';
import 'package:medlink/home_pages/home_screen.dart';
import 'package:medlink/onboarding_pages/onboarding_screens/intro_page1.dart';
import 'package:medlink/onboarding_pages/onboarding_screens/intro_page2.dart';
import 'package:medlink/onboarding_pages/onboarding_screens/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingHome extends StatefulWidget {
  const OnboardingHome({super.key});

  @override
  State<OnboardingHome> createState() => _OnboardingHomeState();
}

class _OnboardingHomeState extends State<OnboardingHome> {

  // controller to keep track of what page we are on
  PageController _controller = PageController();

  // To keep track if we are on the lastpage
  bool onlastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ 
          //implementing PageView

          PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onlastPage = (index == 2);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        
        ),

        // Dot Indicator
        Container(
          alignment: Alignment(0, 0.6) ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //skip button
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: Text('Skip', style: TextStyle(
                           fontSize: 16,
                           color: Colors.black,
                           fontWeight: FontWeight.bold,

                      ),)
                
                ),

              SmoothPageIndicator(
                controller: _controller, 
                count: 3),

              // Next/done button
              onlastPage ?
              GestureDetector(
                onTap: () {
                 Navigator.push(context, 
                 MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                 }));
                },
                child: Text('Done',style: TextStyle(
                           fontSize: 16,
                           color: Colors.black,
                           fontWeight: FontWeight.bold,

                      ),),
                
                ):

             // lastpage to be done indicator
              GestureDetector(
                onTap: () {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 500), 
                    curve: Curves.easeIn
                    );
                },
                child: Text('Next',style: TextStyle(
                           fontSize: 16,
                           color: Colors.black,
                           fontWeight: FontWeight.bold,

                      ),),
                
                ),

            ],
          )
          
          
          ),

          SizedBox(
                    height: 10),

// Elevated Button and text
              Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 361,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button tap
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(0, 122, 135, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Get Started', style: TextStyle(
                           fontSize: 18,
                           color: Colors.white,
                           fontWeight: FontWeight.bold,

                      ),),
                    ),
                  ),
                  SizedBox(height: 1), // Adjust spacing as needed
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle text button tap
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red, // Change color to red
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),




        ],
      ),
    );
  }
}