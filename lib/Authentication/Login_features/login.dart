import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medlink/Authentication/Signup%20features/signupscreen.dart';
import 'package:medlink/widgets/custom%20shapes/Authetication_widgets/toplogo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const TopLogoIntro(),
              const SizedBox(height: 50),
              Form(
                child: Column(
                  children: [
                    // Email
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Ionicons.mail_open_outline),
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    // Password
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password),
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          child: Icon(_passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      obscureText: !_passwordVisible,
                    ),
                    const SizedBox(height: 1), // Adjust spacing
                    // Forgot password button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 2), // Adjust spacing
                            Checkbox(
                              value: _rememberMe,
                              onChanged: (value) {
                                setState(() {
                                  _rememberMe = value!;
                                });
                              },
                            ),
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
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25), // Adjust spacing
                    // OR divider container
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: const Row(
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
                ),
              ),

              // Sign up buttons
              const SizedBox(height: 25),
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
                  const SizedBox(width: 20), // Adjust spacing
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
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.all(20),
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
                          backgroundColor:
                              const Color.fromRGBO(0, 122, 135, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 1), // Adjust spacing as needed
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account? ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle text button tap
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()));
                          },
                          child: const Text(
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
            ],
          ),
        ),
      ),
    );
  }
}
