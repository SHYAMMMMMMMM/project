import 'package:flutter/material.dart';
import 'package:flutter_project/appdrawer.dart';
import 'package:flutter_project/cart.dart';
import 'package:flutter_project/notification.dart';

class Fressery extends StatefulWidget {
  const Fressery({super.key});

  @override
  State<Fressery> createState() => _FresseryState();
}

class _FresseryState extends State<Fressery> {
  // ignore: prefer_typing_uninitialized_variables
  var orientation, size, height, width;
  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const Appdrawer(),
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
          bottom: const TabBar(tabs: [
            Tab(
              child: Text('PLAIN'),
            ),
            Tab(
              child: Text('MIX'),
            ),
            Tab(
              child: Text('GREENS'),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Column(
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    border: Border.all(color: Colors.grey)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '200ml',
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.black),
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
                            child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    border: Border.all(color: Colors.grey)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '500ml',
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.black),
                                    )
                                  ],
                                )),
                          ),
                        ),
                        Positioned(
                            left: 125,
                            top: 110,
                            child: IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {},
                            )),
                        Positioned(
                            left: 180,
                            top: 110,
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {},
                            )),
                        Positioned(
                          right: 30,
                          top: 115,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Cart()),
                              );
                            },
                            child: Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [Colors.red, Colors.orangeAccent],
                                    begin: Alignment.topRight,
                                    end: Alignment.topLeft,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'ADD TO CART',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 9),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                            right: 10,
                            top: 30,
                            child: Text(
                              '1x Rs.79',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            )),
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
                                    fit: BoxFit.fitHeight)),
                          ),
                        ),
                        const Positioned(
                          left: 130,
                          top: 200,
                          child: Text(
                            'Special grape juice',
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    border: Border.all(color: Colors.grey)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '200ml',
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.black),
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
                            child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    border: Border.all(color: Colors.grey)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '500ml',
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.black),
                                    )
                                  ],
                                )),
                          ),
                        ),
                        Positioned(
                            left: 125,
                            top: 270,
                            child: IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {},
                            )),
                        Positioned(
                            left: 180,
                            top: 270,
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {},
                            )),
                        Positioned(
                          right: 30,
                          top: 270,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Cart()),
                              );
                            },
                            child: Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [Colors.red, Colors.orangeAccent],
                                    begin: Alignment.topRight,
                                    end: Alignment.topLeft,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'ADD TO CART',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 9),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                            right: 10,
                            top: 190,
                            child: Text(
                              '3x Rs.350',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            )),
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
                          top: 375,
                          child: Container(
                            height: 90,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('images/straw.jpeg'),
                                    fit: BoxFit.fitHeight)),
                          ),
                        ),
                        const Positioned(
                          left: 130,
                          top: 360,
                          child: Text(
                            'Strawberry juice',
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
                          child: Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(color: Colors.grey)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '200ml',
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.black),
                                  )
                                ],
                              )),
                        ),
                        Positioned(
                          left: 182,
                          top: 405,
                          child: Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(color: Colors.grey)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '500ml',
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.black),
                                  )
                                ],
                              )),
                        ),
                        Positioned(
                            left: 125,
                            top: 430,
                            child: IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {},
                            )),
                        Positioned(
                            left: 180,
                            top: 430,
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {},
                            )),
                        Positioned(
                          right: 30,
                          top: 430,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [Colors.red, Colors.orangeAccent],
                                    begin: Alignment.topRight,
                                    end: Alignment.topLeft,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'ADD TO CART',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 9),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                            right: 10,
                            top: 350,
                            child: Text(
                              '1x Rs.79',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            )),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 500, 0, 0),
                          height: 150,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 525,
                          child: Container(
                            height: 90,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('images/apple.jpeg'),
                                    fit: BoxFit.fitHeight)),
                          ),
                        ),
                        const Positioned(
                          left: 130,
                          top: 520,
                          child: Text(
                            'Fresh apple juice',
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
                          child: Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(color: Colors.grey)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '200ml',
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.black),
                                  )
                                ],
                              )),
                        ),
                        Positioned(
                          left: 182,
                          top: 565,
                          child: Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(color: Colors.grey)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '500ml',
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.black),
                                  )
                                ],
                              )),
                        ),
                        Positioned(
                            left: 125,
                            top: 590,
                            child: IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {},
                            )),
                        Positioned(
                            left: 180,
                            top: 590,
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {},
                            )),
                        Positioned(
                          right: 30,
                          top: 590,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [Colors.red, Colors.orangeAccent],
                                    begin: Alignment.topRight,
                                    end: Alignment.topLeft,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'ADD TO CART',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 9),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                            right: 10,
                            top: 510,
                            child: Text(
                              '1x Rs.79',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            )),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 660, 0, 0),
                          height: 150,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 685,
                          child: Container(
                            height: 90,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('images/orange.jpg'),
                                    fit: BoxFit.fitHeight)),
                          ),
                        ),
                        const Positioned(
                          left: 130,
                          top: 680,
                          child: Text(
                            'Orange juice',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        const Positioned(
                          left: 130,
                          top: 710,
                          child: Text(
                            'Size',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ),
                        Positioned(
                          left: 130,
                          top: 725,
                          child: Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(color: Colors.grey)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '200ml',
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.black),
                                  )
                                ],
                              )),
                        ),
                        Positioned(
                          left: 182,
                          top: 725,
                          child: Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(color: Colors.grey)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '500ml',
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.black),
                                  )
                                ],
                              )),
                        ),
                        Positioned(
                            left: 125,
                            top: 760,
                            child: IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {},
                            )),
                        Positioned(
                            left: 180,
                            top: 760,
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {},
                            )),
                        Positioned(
                          right: 30,
                          top: 760,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [Colors.red, Colors.orangeAccent],
                                    begin: Alignment.topRight,
                                    end: Alignment.topLeft,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'ADD TO CART',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 9),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                            right: 10,
                            top: 670,
                            child: Text(
                              '1x Rs.79',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
            const Center(
              child: Text('MIX'),
            ),
            const Center(
              child: Text('Green'),
            ),
          ],
        ),
      ),
    );
  }
}
