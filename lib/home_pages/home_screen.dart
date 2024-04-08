import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medlink/home_pages/hamburger_nav.dart';



class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const DrawerNav(),
    
      
      appBar: AppBar(
        title: const Column(
          children: [
            Text('')
          ],
        ),
        actions: [
          IconButton.outlined(
            onPressed: (){}, 
            icon: const Icon(Icons.notifications_outlined)
            
            )
        ],

      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: const [

        ],
      ),


      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.greenAccent,
        animationDuration: const Duration(milliseconds: 300),
        
        items: const [
          Icon(Ionicons.home_outline),
          Icon(Ionicons.calendar_outline),
          Icon(Ionicons.folder_open_outline),
          Icon(Ionicons.medkit_outline),

      ],),
      
    );
  }
}