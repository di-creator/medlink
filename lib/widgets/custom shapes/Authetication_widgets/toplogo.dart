import 'package:flutter/material.dart';


class TopLogoIntro extends StatelessWidget {
  const TopLogoIntro({
    super.key,
    this.image = const Image(image: AssetImage('assets/logos/greenlogo.png')),
    this.String = const Text(''),

  });

  final Text String;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: 150,
            image: AssetImage('assets/logos/greenlogo.png'),
          ),
          SizedBox(height: 2),
          Text('Welcome back. Log in to continue'),
        ],
      ),
    );
  }
}