
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medlink/widgets/custom%20shapes/Authetication_widgets/toplogo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
            
          child: Column(
            children: [
              TopLogoIntro(),
          // Form
          SizedBox(height: 50),
          Form(child: Column(
            children: [
            // Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Ionicons.mail_open_outline),
                labelText: 'Email',
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
              ),
            ),
            // Password
             SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility),
                      ),
                obscureText: true,
            ),
            SizedBox(height: 1), // Adjust spacing
          // Forgot password button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 2), // Adjust spacing
                  Icon(Icons.check_box_outline_blank), // Placeholder for checkbox
                  Text(
                    'Remember me',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  
                ],
              ),
              TextButton(
                onPressed: () {
                  // Add action for forgot password
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25), // Adjust spacing
          // OR divider container
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
            ],
          ),),

          // Sign up buttons
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Google sign up button
                  GestureDetector(
                    onTap: () {
                      // Handle Google sign up
                    },
                    child: Image.asset(
                      'assets/images/google.png', // Replace with the actual URL of the Google logo
                      width: 60,
                      height: 60,
                    ),
                  ),
                  SizedBox(width: 20), // Adjust spacing
                  // Apple sign up button
                  GestureDetector(
                    onTap: () {
                      // Handle Apple sign up
                    },
                    child: Image.asset(
                      'assets/images/apple.png', // Replace with the actual URL of the Apple logo
                      width: 60,
                      height: 60,
                    ),
                  ),
                ],
              ),


          // Elevated Button and text
          SizedBox(height: 25),  
            Container(
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
                          'Sign Up',
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
            ]
        ),
        ),
        ),
    );
  }
}

