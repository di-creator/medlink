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
            accountName: Text("Rose Gold"), 
            accountEmail: Text('rosegold@gmail.com'),

            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/profileimage.png',
                        fit: BoxFit.cover,

                ),
                ),
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 122, 135, 100),
              image: DecorationImage(image: AssetImage('assets/images/backgroundone.jpg'), fit: BoxFit.cover)
            ),
            )
        ],
      ),

    );
  }
}