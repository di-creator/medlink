import 'package:flutter/material.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Rose Gold"), 
            accountEmail: const Text('rosegold@gmail.com'),

            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/profileimage.png',
                        fit: BoxFit.cover,

                ),
                ),
            ),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 122, 135, 100),
              image: DecorationImage(image: AssetImage('assets/images/backgroundone.jpg'), fit: BoxFit.cover)
            ),
            )
        ],
      ),

    );
  }
}