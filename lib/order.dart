import 'package:flutter/material.dart';
import 'package:flutter_project/cart.dart';
import 'package:flutter_project/details.dart';
import 'package:flutter_project/frssery.dart';
import 'package:flutter_project/notification.dart';
import 'package:flutter_project/orderdrawer.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  bool isSwitched = false;
  bool isopened = false;
  bool isclosed = false;
  bool isdone = false;
  bool iscalled = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        drawer: const Orderdrawer(),
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
            Stack(
              fit: StackFit.passthrough,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 50,
                  child: Container(
                    height: 90,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('images/25328814.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 40,
                  child: Text(
                    'Raw pomegranate',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 70,
                  child: Text(
                    'Size',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ),
                Positioned(
                  left: 130,
                  top: 85,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '200ml',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.black),
                            )
                          ],
                        )),
                  ),
                ),
                Positioned(
                  left: 182,
                  top: 85,
                  child: InkWell(
                    onTap: () {},
                    focusColor: Colors.amber,
                    child: Container(
                        height: 20,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                              child: const Text(
                                'Subscription',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Positioned(
                  left: 180,
                  top: 80,
                  child: SizedBox(
                    height: 30,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: isSwitched,
                        activeColor: Colors.lightGreen,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 120,
                  child: Column(
                    children: [
                      Text(
                        'Order ID',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        '123ABC5',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  left: 186,
                  top: 120,
                  child: Column(
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        '25 june 2023',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  left: 260,
                  top: 120,
                  child: Column(
                    children: [
                      Text(
                        'Status',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        'Scheduled',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 20,
                  child: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.delete_outline_outlined),
                              Text('Cancer Order')
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.menu_book_outlined),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Details()),
                                  );
                                },
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Details()),
                                    );
                                  },
                                  child: const Text('Order Details'))
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 180, 0, 0),
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 210,
                  child: Container(
                    height: 90,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('images/grape.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 200,
                  child: Text(
                    'Special grapes juice',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 230,
                  child: Text(
                    'Size',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ),
                Positioned(
                  left: 130,
                  top: 245,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '200ml',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.black),
                            )
                          ],
                        )),
                  ),
                ),
                Positioned(
                  left: 182,
                  top: 245,
                  child: InkWell(
                    onTap: () {},
                    focusColor: Colors.amber,
                    child: Container(
                        height: 20,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                              child: const Text(
                                'Subscription',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Positioned(
                  left: 180,
                  top: 240,
                  child: SizedBox(
                    height: 30,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: isdone,
                        activeColor: Colors.lightGreen,
                        onChanged: (value) {
                          setState(() {
                            isdone = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 280,
                  child: Column(
                    children: [
                      Text(
                        'Order ID',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        '123ABC5',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  left: 186,
                  top: 280,
                  child: Column(
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        '25 june 2023',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  left: 260,
                  top: 280,
                  child: Column(
                    children: [
                      Text(
                        'Status',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        'Scheduled',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 180,
                  child: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.delete_outline_outlined),
                              Text('Cancer Order')
                            ],
                          ),
                        ),
                        const PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.menu_book_outlined),
                              Text('Order Details')
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 340, 0, 0),
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 370,
                  child: Container(
                    height: 90,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('images/orange.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 360,
                  child: Text(
                    'Orange juice',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 390,
                  child: Text(
                    'Size',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ),
                Positioned(
                  left: 130,
                  top: 405,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '200ml',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.black),
                            )
                          ],
                        )),
                  ),
                ),
                Positioned(
                  left: 182,
                  top: 405,
                  child: InkWell(
                    onTap: () {},
                    focusColor: Colors.amber,
                    child: Container(
                        height: 20,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                              child: const Text(
                                'Subscription',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Positioned(
                  left: 178,
                  top: 400,
                  child: SizedBox(
                    height: 30,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: isclosed,
                        activeColor: Colors.lightGreen,
                        onChanged: (value) {
                          setState(() {
                            isclosed = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 440,
                  child: Column(
                    children: [
                      Text(
                        'Order ID',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        '123ABC5',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  left: 186,
                  top: 440,
                  child: Column(
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        '25 june 2023',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  left: 260,
                  top: 440,
                  child: Column(
                    children: [
                      Text(
                        'Status',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        'Scheduled',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 340,
                  child: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.delete_outlined),
                                onPressed: () {},
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: const Text('Cancer Order'))
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.menu_book_outlined),
                                onPressed: () {},
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: const Text('Order Details'))
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 500, 0, 0),
                  height: 180,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Fressery()),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                          height: 30,
                          width: 180,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(
                                colors: [Colors.red, Colors.orange],
                                begin: Alignment.center,
                                end: Alignment.topRight,
                              )),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Re-Order',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 530,
                  child: Container(
                    height: 90,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('images/25328814.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 520,
                  child: Text(
                    'Raw pomegranate',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 550,
                  child: Text(
                    'Size',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ),
                Positioned(
                  left: 130,
                  top: 565,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '200ml',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.black),
                            )
                          ],
                        )),
                  ),
                ),
                Positioned(
                  left: 182,
                  top: 565,
                  child: InkWell(
                    onTap: () {},
                    focusColor: Colors.amber,
                    child: Container(
                        height: 20,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                              child: const Text(
                                'Subscription',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Positioned(
                  left: 180,
                  top: 560,
                  child: SizedBox(
                    height: 30,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: isopened,
                        activeColor: Colors.lightGreen,
                        onChanged: (value) {
                          setState(() {
                            isopened = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 600,
                  child: Column(
                    children: [
                      Text(
                        'Order ID',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        '123ABC5',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  left: 186,
                  top: 600,
                  child: Column(
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        '25 june 2023',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  left: 260,
                  top: 600,
                  child: Column(
                    children: [
                      Text(
                        'Status',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        'Completed',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 500,
                  child: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.delete_outline_outlined),
                              Text('Cancer Order')
                            ],
                          ),
                        ),
                        const PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.menu_book_outlined),
                              Text('Order Details')
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 340,
                  child: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.delete_outline_outlined),
                              Text('Cancer Order')
                            ],
                          ),
                        ),
                        const PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.menu_book_outlined),
                              Text('Order Details')
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 690, 0, 0),
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 710,
                  child: Container(
                    height: 90,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('images/apple.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 710,
                  child: Text(
                    'Fresh apple juice',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 740,
                  child: Text(
                    'Size',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ),
                Positioned(
                  left: 130,
                  top: 755,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '200ml',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.black),
                            )
                          ],
                        )),
                  ),
                ),
                Positioned(
                  left: 182,
                  top: 755,
                  child: InkWell(
                    onTap: () {},
                    focusColor: Colors.amber,
                    child: Container(
                        height: 20,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                              child: const Text(
                                'Subscription',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Positioned(
                  left: 179,
                  top: 750,
                  child: SizedBox(
                    height: 30,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: iscalled,
                        activeColor: Colors.lightGreen,
                        onChanged: (value) {
                          setState(() {
                            iscalled = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 130,
                  top: 790,
                  child: Column(
                    children: [
                      Text(
                        'Order ID',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        '123ABC5',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  left: 186,
                  top: 790,
                  child: Column(
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        '25 june 2023',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  left: 260,
                  top: 790,
                  child: Column(
                    children: [
                      Text(
                        'Status',
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      Text(
                        'Completed',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 690,
                  child: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.delete_outline_outlined),
                              Text('Cancer Order')
                            ],
                          ),
                        ),
                        const PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.menu_book_outlined),
                              Text('Order Details')
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 340,
                  child: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.delete_outline_outlined),
                              Text('Cancer Order')
                            ],
                          ),
                        ),
                        const PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.menu_book_outlined),
                              Text('Order Details')
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
