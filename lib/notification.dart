import 'package:flutter/material.dart';
import 'package:flutter_project/notificationdrawer.dart';

import 'cart.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const Notificationdrawer(),
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
          bottom: const TabBar(tabs: [
            Tab(
              child: Text('ALERTS'),
            ),
            Tab(
              child: Text('OFFERS'),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      height: 130,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Notification header',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          const Text(
                            '12 july 2023  12:30 pm',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: const Column(
                              children: [
                                Text(
                                  'Lorem ipsum is empty text of the printing and type setting industry.Lorem ipsum has been the industry standard dummy text ever since the 1500s,when an unknown printer took a gallery of type and scrambled it to make atype specimen book.It has survived not only five centuries,',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 65, 61, 61),
                                      fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                      height: 160,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Subscription end tomorrow',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          const Text(
                            '12 july 2023  12:30 pm',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Column(
                              children: [
                                const Text(
                                  'Lorem ipsum is empty text of the printing and type setting industry.Lorem ipsum has been the industry standard dummy text ever since the 1500s,when an unknown printer took a gallery of type and scrambled it to make atype specimen book.It has survived not only five centuries,',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 65, 61, 61),
                                      fontSize: 10),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 0),
                                        height: 30,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [Colors.red, Colors.orange],
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Re-Subscribe',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 320, 0, 0),
                      height: 130,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Notification header',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          const Text(
                            '12 july 2023  12:30 pm',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: const Column(
                              children: [
                                Text(
                                  'Lorem ipsum is empty text of the printing and type setting industry.Lorem ipsum has been the industry standard dummy text ever since the 1500s,when an unknown printer took a gallery of type and scrambled it to make atype specimen book.It has survived not only five centuries,',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 65, 61, 61),
                                      fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 460, 0, 0),
                      height: 130,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Notification header',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          const Text(
                            '12 july 2023  12:30 pm',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: const Column(
                              children: [
                                Text(
                                  'Lorem ipsum is empty text of the printing and type setting industry.Lorem ipsum has been the industry standard dummy text ever since the 1500s,when an unknown printer took a gallery of type and scrambled it to make atype specimen book.It has survived not only five centuries,',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 65, 61, 61),
                                      fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
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
                                  Text('Delete Notification')
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.delete_forever_outlined),
                                  Text('Delete all Notification')
                                ],
                              ),
                            ),
                          ];
                        },
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 150,
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
                                  Text('Delete Notification')
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.delete_forever_outlined),
                                  Text('Delete all Notification')
                                ],
                              ),
                            ),
                          ];
                        },
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 320,
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
                                  Text('Delete Notification')
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.delete_forever_outlined),
                                  Text('Delete all Notification')
                                ],
                              ),
                            ),
                          ];
                        },
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 460,
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
                                  Text('Delete Notification')
                                ],
                              ),
                            ),
                            const PopupMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.delete_forever_outlined),
                                  Text('Delete all Notification')
                                ],
                              ),
                            ),
                          ];
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Center(
              child: Text('OFFERS'),
            ),
          ],
        ),
      ),
    );
  }
}
