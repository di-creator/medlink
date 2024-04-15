import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medlink/Authentication/Login_features/login.dart';
import 'package:medlink/home_pages/home_screen.dart';
import 'package:medlink/widgets/custom%20shapes/Authetication_widgets/toplogo.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String email = "", password = "", name = "", confirmpassword = "";
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController confirmpasswordcontroller = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  bool _passwordVisible = false; // Add this variable for password visibility

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  registration() async {
    if (password != null &&
        namecontroller.text != "" &&
        emailcontroller.text != "") {
      if (password != confirmpasswordcontroller.text) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Passwords do not match"),
        ));
        return; // Exit the function if passwords don't match
      }
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:
              Text("Registered Successfully", style: TextStyle(fontSize: 20.0)),
        ));
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Homepage())));
      } on FirebaseAuthException catch (e) {
        if (e.code == "weak-password") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: const Color.fromRGBO(0, 122, 135, 1),
            content: Text("Password provided is too weak",
                style: TextStyle(fontSize: 18.0)),
          ));
        } else if (e.code == "email-already-in-use") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Account already exists",
                style: TextStyle(fontSize: 18.0)),
          ));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          const TopLogoIntro(),
          // Form
          const SizedBox(height: 30),
          Form(
            key: _formkey,
            child: Column(
              children: [
                //Full Name
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'John Doe',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                // Email
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  controller: emailcontroller,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Ionicons.mail_open_outline),
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(),
                  ),
                ),
                // Password
                const SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: _togglePasswordVisibility,
                    ),
                  ),
                  obscureText: !_passwordVisible,
                ),
                const SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please re-type your password';
                    }
                    return null;
                  },
                  controller: confirmpasswordcontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: 'Confirm Password',
                    hintText: 'Re-enter your password',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: _togglePasswordVisibility,
                    ),
                  ),
                  obscureText: !_passwordVisible,
                ),

                const SizedBox(height: 15), // Adjust spacing
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

          // Buttons for Google Sign-up

          // Elevated Button and text
          const SizedBox(height: 5),
// Buttons for Google Sign-up
          Column(
            children: [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png', // Replace with your image path
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(width: 10),
                      Text('Sign up with Google'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/apple.png', // Replace with your image path
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(width: 10),
                      Text('Sign in with Apple'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: GestureDetector(
                  onTap: () {
                    // Handle signup button tap
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        email = emailcontroller.text;
                        name = namecontroller.text;
                        password = passwordcontroller.text;
                      });
                    }
                    registration();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 122, 135, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
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
                              builder: (context) => LoginScreen()));
                    },
                    child: const Text(
                      'Login',
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
        ]),
      )),
    );
  }
}
