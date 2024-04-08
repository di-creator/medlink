import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medlink/widgets/custom%20shapes/circular_container.dart';
import 'package:medlink/widgets/custom%20shapes/final_curve_widget.dart';


class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

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
        padding: EdgeInsets.all(0),

        
              
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
             child: Image.asset('assets/images/imagetwo.png',
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
          SizedBox(
            height: 10.0, // Add 0.0 for specifying unit
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding:const  EdgeInsets.only(left: 20.0, right: 10.0), // Adjust padding as needed
            child:const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get prescriptions on demand.',
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
                  'Easily refill prescriptions, browse health products and enjoy doorstep delivery with only a few steps.',
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



