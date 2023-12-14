import 'package:flutter/material.dart';
import 'package:flutter_project/notification.dart';

import 'cart.dart';
import 'detailsdrawer.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: const Detailsdrawer(),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 184,
                      child: Container(
                          height: 200,
                          width: 200,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage('images/25328814.jpg'),
                                fit: BoxFit.cover,
                              ))),
                    )
                  ],
                ),
                SizedBox(
                  height: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pinkAccent),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Colors.red, Colors.orange],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topLeft,
                                ),
                                border: Border.all(color: Colors.pinkAccent),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.pinkAccent),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.pinkAccent),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 0, 10, 0),
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.pinkAccent),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.pinkAccent),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 410,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Raw Pomegranate',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 480,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Size',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 520,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.pinkAccent)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '200ml',
                              style: TextStyle(
                                  color: Colors.pinkAccent, fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '500ml',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 610,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FittedBox(
                                  fit: BoxFit.fill,
                                  child: IconButton(
                                    icon: const Icon(Icons.remove),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            )),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '1',
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FittedBox(
                                      fit: BoxFit.fill,
                                      child: IconButton(
                                        icon: const Icon(Icons.add),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                )),
                            const Row(
                              children: [
                                Text(
                                  '1xRs.79',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            )
                          ],
                        )
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 330, 0, 0),
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.red, Colors.orange],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ADD TO CART',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 400, 0, 0),
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pinkAccent),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SUBSCRIBE',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 970,
                  child: Row(
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 500, 0, 0),
                  child: const Column(
                    children: [
                      Text(
                        'Who does note love a chilled glass of fruit juice on a hot summer day?And real fruit juice-mixed is not just delisious and refreshing,but it also filled with the goodness of 9 different fruits.Devoid of preservatives and artifical ingredients,this mixed fruit juice is a fine siurce of vitamin C and can boost your immunity significiantly. It is also helpul in maintaining weight and regulating cholesterol ',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1180,
                  child: Row(
                    children: [
                      Text(
                        'Nutrition Facts',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 610, 0, 0),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1230,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '200 mL:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '87g',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 630, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
                SizedBox(
                  height: 1290,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1290,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'calories:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '80g',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 660, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
                SizedBox(
                  height: 1350,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1350,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fat:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '0.5g,   1%',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 690, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
                SizedBox(
                  height: 1410,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1410,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cholestrol:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '0mg',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 720, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
                SizedBox(
                  height: 1470,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1470,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sodium:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '0mg',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 750, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
                SizedBox(
                  height: 1530,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1530,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Carbohydrate:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '18g,   6%',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 780, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
                SizedBox(
                  height: 1590,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'fibers:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '2g',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 810, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
                SizedBox(
                  height: 1650,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'sugar:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '2g',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 840, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
                SizedBox(
                  height: 1710,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1710,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Protein:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '3g',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 870, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
                SizedBox(
                  height: 1770,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Vitamin A:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '2%',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 900, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
                SizedBox(
                  height: 1830,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Calcium:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '0%',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 930, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
                SizedBox(
                  height: 1890,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Vitamin C:',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          '10%',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 960, 10, 0),
                  height: 1.0,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 247, 243, 243),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
