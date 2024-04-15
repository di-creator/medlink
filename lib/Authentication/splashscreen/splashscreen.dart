import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 122, 135, 100),
      body: Positioned(
          bottom: 20,
          child: Image(
              image: AssetImage(
            'assets/logos/greenlogo.png',
          ))),
    );
  }
}
