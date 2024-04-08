import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medlink/onboarding_pages/onboarding_screens/onboarding_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(0, 122, 135, 100)),
        textTheme: 
              GoogleFonts.plusJakartaSansTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      home: const OnboardingHome(),
    );
  }
}

