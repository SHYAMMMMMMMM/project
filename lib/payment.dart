import 'package:flutter/material.dart';
import 'package:flutter_project/cart.dart';
import 'package:flutter_project/notification.dart';
import 'package:flutter_project/paymentdrawer.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        drawer: const Paymentdrawer(),
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
                  MaterialPageRoute(
                      builder: (context) => const Notifications()),
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
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.wallet),
                  onPressed: () {},
                ),
                const Row(
                  children: [
                    Text(
                      'Wallet(Balance:Rs.580)',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(50, 0, 15, 0),
              height: 1.0,
              width: double.infinity,
              color: const Color.fromARGB(255, 244, 239, 239),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.mouse_sharp),
                  onPressed: () {},
                ),
                const Row(
                  children: [
                    Text(
                      'Net Banking',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(50, 0, 15, 0),
              height: 1.0,
              width: double.infinity,
              color: const Color.fromARGB(255, 244, 239, 239),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.payment),
                  onPressed: () {},
                ),
                const Row(
                  children: [
                    Text(
                      'Card payment',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(50, 0, 15, 0),
              height: 1.0,
              width: double.infinity,
              color: const Color.fromARGB(255, 244, 239, 239),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.money),
                  onPressed: () {},
                ),
                const Row(
                  children: [
                    Text(
                      'Cash On Delivery',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    height: 50,
                    width: 250,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      colors: [Colors.red, Colors.orange],
                      begin: Alignment.center,
                      end: Alignment.topRight,
                    )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PROCEED TO PAY',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
