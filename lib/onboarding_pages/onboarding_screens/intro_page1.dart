import 'package:flutter/material.dart';
import 'package:medlink/widgets/custom%20shapes/circular_container.dart';
import 'package:medlink/widgets/custom%20shapes/final_curve_widget.dart';


class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 122, 135, 100),

      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            complete_curved_widget(
              child: Container(
        color: const Color.fromRGBO(0, 122, 135, 100),
        padding: const EdgeInsets.all(0),

        
              
              child: SizedBox(
                height: 400,
      
      
      
      child: Stack(
                children: [
      Positioned(top:-150, right: -330, child:  CircularContainer(backgroundColor: Colors.white12.withOpacity(0.2),)),
      Positioned(top:100, right: 300, child:  CircularContainer(backgroundColor: Colors.white12.withOpacity(0.2),)),

      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Center(
             child: Image.asset('assets/images/imageone.png',
             width: 600,
            height: 400,
            fit: BoxFit.fitHeight,
              
             ),
                 ),
          ),
        ],
      )
      
                ],
              )
              ),

      
          
      ),
      
            ),
          const SizedBox(
            height: 10.0, // Add 0.0 for specifying unit
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding:const  EdgeInsets.only(left: 20.0, right: 10.0), // Adjust padding as needed
            child:const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Healthcare at your fingertips.',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Experience seamless consultations and personalized care from our team of professionals from the comfort of your home.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ), 

        ],),

        
        ),
       
        
      );
      
  
  }
}



