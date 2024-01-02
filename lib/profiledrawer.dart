import 'package:flutter/material.dart';
import 'package:flutter_project/profile.dart';
import 'package:flutter_project/wallet.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'frssery.dart';
import 'loginpage.dart';
import 'notification.dart';
import 'order.dart';

class Profiledrawer extends StatefulWidget {
  const Profiledrawer({super.key});

  @override
  State<Profiledrawer> createState() => _ProfiledrawerState();
}

class _ProfiledrawerState extends State<Profiledrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName:const Text('GLENN MAXWELL'),
            accountEmail:const Text('Glennmaxwell123@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('images/39960.png')),
            ),
            decoration:const BoxDecoration(
             gradient: LinearGradient(
              colors: [Colors.orangeAccent,Colors.redAccent],
              begin: Alignment.bottomLeft,
              end: Alignment.topCenter
             )
            ),
          ),
          ListTile(
            leading:const Icon(Icons.home),
            title:const Text('Shop'),
            onTap: () {
               Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Fressery()),
                  );
            },
          ),
            ListTile(
            leading:const Icon(Icons.shopping_cart),
            title:const Text('My Order'),
            onTap: () {
               Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Order()),
                  );
            },
          ),
           ListTile(
            leading:const Icon(Icons.wallet),
            title:const Text('My Wallet'),
            onTap: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Wallet()),
              );
            },
          ),
           ListTile(
            leading:const Icon(Icons.person),
            title:const Text('My Account'),
            onTap: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Profiler()),
              );
            },
          ),
           ListTile(
            leading:const Icon(Icons.subscriptions),
            title:const Text('My Subscription'),
            onTap: () {
            },
          ),
           ListTile(
            leading:const Icon(Icons.notifications),
            title:const Text('Notification'),
            onTap: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Notifications()),
              );
            },
          ),
           ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Log Out"),
            onTap: ()async {
              SharedPreferences preferences = await SharedPreferences.getInstance();
              preferences.remove("email");
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder:(_) {
                  return LoginPage();
                },),
              );
            },
          ),
           ListTile(
            leading:const Icon(Icons.message),
            title:const Text("FAQ's"),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}