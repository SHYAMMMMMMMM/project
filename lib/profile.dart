import 'package:flutter/material.dart';
import 'package:flutter_project/adress.dart';
import 'package:flutter_project/profiledrawer.dart';

import 'cart.dart';
import 'notification.dart';

class Profiler extends StatefulWidget {
  const Profiler({super.key});

  @override
  State<Profiler> createState() => _ProfilerState();
}

class _ProfilerState extends State<Profiler> {
  final gmail = TextEditingController();
  final phone = TextEditingController();
  final code = TextEditingController();
  bool isplaced = false;
  bool islanded = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        drawer: const Profiledrawer(),
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
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50,
                        child: ClipOval(child: Image.asset('images/39960.png')),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: const Column(
                        children: [
                          Text(
                            'Glenn Maxwell',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(135, 70, 0, 0),
                  child: const Row(
                    children: [
                      Text(
                        'Wallet Balance:',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        '₹328',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(140, 90, 0, 0),
                      height: 20,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pinkAccent),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              'Recharge Wallet',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 130, 20, 0),
                        child: TextField(
                          controller: gmail,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              hintText: 'Email'),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 190, 20, 0),
                        child: TextField(
                          controller: phone,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              hintText: 'Phone'),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 250, 20, 0),
                        child: TextField(
                          controller: code,
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              hintText: 'Change password'),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 320, 0, 0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Adress',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        'Glenn Maxwell',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'Flat no:5D.11th floor,',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'Building name, City name,',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'Landmark,Area name,',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'Pin:6912345',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'Mob:+919712345678',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 440, 20, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 219, 212, 212),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 450, 0, 0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Adress',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        'Anne Joseph',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'Flat no:5D.11th floor,',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'Building name, City name,',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'Landmark,Area name,',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'Pin:6912345',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        'Mob:+919712345678',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 570, 20, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 219, 212, 212),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 300, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Make it Default',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'Lobster-Regular'),
                      ),
                      Switch(
                        value: isplaced,
                        activeColor: Colors.lightGreen,
                        onChanged: (value) {
                          setState(() {
                            isplaced = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 450, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Make it Default',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'Lobster-Regular'),
                      ),
                      Switch(
                        value: islanded,
                        activeColor: Colors.lightGreen,
                        onChanged: (value) {
                          setState(() {
                            islanded = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 30, 0),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pinkAccent)),
                      child: Row(
                        children: [
                          FittedBox(
                            fit: BoxFit.fill,
                            child: IconButton(
                              color: Colors.pinkAccent,
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Adress()),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pinkAccent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Adress()),
                          );
                        },
                        child: const Text(
                          'Add New Address',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      )
                    ],
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
