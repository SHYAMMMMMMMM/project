import 'package:flutter/material.dart';
import 'package:flutter_project/walletdrawer.dart';

import 'cart.dart';
import 'notification.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
         drawer: const Walletdrawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.orangeAccent, Colors.redAccent],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.calendar_month),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                 Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Notifications()),
              );
              },
            ),
            IconButton(
              icon: const Icon(Icons.shopping_bag),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Cart()),
                );
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              margin:const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child:const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('₹2328',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                  Text('Wallet balance',style: TextStyle(color: Colors.grey,fontSize: 10),)
                ],
              ),
            ),
            Container(
                 margin:const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                children: [
                  Container(
                    height: 35,
                    width: 170,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child:const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Recharge Wallet',style: TextStyle(color: Colors.grey,fontSize: 11),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
               margin:const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child:const Column(
                children: [
                  Text('Transfer wallet amount',style: TextStyle(color: Colors.grey,fontSize: 10),)
                ],
              ),
            ),
              Container(
               margin:const EdgeInsets.fromLTRB(20, 40, 0, 0),
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('MY TRANSACTIONS',style: TextStyle(color: Colors.black,fontSize: 15),)
                ],
              ),
            ),
            Container(
                margin:const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('₹2500',style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                  Text('17 july  2:30 pm',style: TextStyle(color: Colors.grey,fontSize: 10),)
                ],
              ),
            ),
            Column(
              children: [
                Container(
                   margin:const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 243, 235, 235),
                )
              ],
            ),
             Container(
                margin:const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('₹2500',style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                  Text('17 july  2:30 pm',style: TextStyle(color: Colors.grey,fontSize: 10),)
                ],
              ),
            ),
            Column(
              children: [
                Container(
                   margin:const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 243, 235, 235),
                )
              ],
            ),
             Container(
                margin:const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('₹2500',style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                  Text('17 july  2:30 pm',style: TextStyle(color: Colors.grey,fontSize: 10),)
                ],
              ),
            ),
            Column(
              children: [
                Container(
                   margin:const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 243, 235, 235),
                )
              ],
            ),
             Container(
                margin:const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('₹2500',style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                  Text('17 july  2:30 pm',style: TextStyle(color: Colors.grey,fontSize: 10),)
                ],
              ),
            ),
            Column(
              children: [
                Container(
                   margin:const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 243, 235, 235),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}