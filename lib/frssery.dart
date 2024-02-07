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
  List<String> productName = [
    'pomegranate juice ₹.79',
    'Grape juice ₹.350',
    'Strawberry juice ₹.79',
    'Apple juice ₹.79',
    'Orange juice ₹.79',
    'Mango juice ₹.79',
    'Pineapple juice ₹.79'
  ];
  List<String> productImage = [
    'https://tiimg.tistatic.com/fp/1/007/862/100-natural-fresh-sweetness-refreshing-delicious-pomegranate-juice-983.jpg',
    'https://4.imimg.com/data4/VT/LQ/MY-31657999/grape-juice-500x500.jpg',
    'https://img.freepik.com/premium-vector/strawberry-juice-cocktail-smoothie-yogurt-glass-with-straw-whole-half-strawberry-isolated-transparent-background-realistic-3d-vector-illustration_545793-1246.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGhcbcojKkeLG87HsTe19XhCLkdG2bs-GwBQ&usqp=CAU',
    'https://draxe.com/wp-content/uploads/2022/12/DrAxeOrangeJuiceThumbnail.jpg',
    'https://ceylonserve.com/wp-content/uploads/2022/09/Mango-Juice.jpg',
    'https://www.amitaskitchen.in/107-large_default/pineapple-juice.jpg',
  ];
  List<int> cartItems = List.generate(10, (index) => 0);
  String _selectedValue = '';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const Appdrawer(),
        appBar: AppBar(
          title: const Text('Fressery'),
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
            ListView.builder(
              itemCount: productName.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image(
                                height: 120,
                                width: 120,
                                image: NetworkImage(
                                    productImage[index].toString())),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productName[index].toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    'Size',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        width: 100,
                                        child: RadioMenuButton(
                                          value: '200ml',
                                          groupValue: _selectedValue,
                                          onChanged: (selectedvalue) {
                                            setState(() => _selectedValue =
                                                selectedvalue!);
                                          },
                                          style: ButtonStyle(
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              elevation:
                                                  const MaterialStatePropertyAll(
                                                      2),
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      Color.fromARGB(
                                                          255, 214, 232, 194))),
                                          child: const Text('200ml'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 100,
                                        child: RadioMenuButton(
                                          value: '500ml',
                                          groupValue: _selectedValue,
                                          onChanged: (selectedvalue) {
                                            setState(() => _selectedValue =
                                                selectedvalue!);
                                          },
                                          style: ButtonStyle(
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              elevation:
                                                  const MaterialStatePropertyAll(
                                                      2),
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      Color.fromARGB(
                                                          255, 214, 232, 194))),
                                          child: const Text('500ml'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Cart()),
                                        );
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              colors: [
                                                Colors.orange,
                                                Colors.pink
                                              ],
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.centerLeft,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                          child: Text(
                                            'Add to cart',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 115,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.remove),
                                          onPressed: () {
                                            setState(() {
                                              if (cartItems[index] > 0) {
                                                cartItems[index]--;
                                              }
                                            });
                                          },
                                        ),
                                        Text(cartItems[index].toString()),
                                        IconButton(
                                          icon: const Icon(Icons.add),
                                          onPressed: () {
                                            setState(() {
                                              cartItems[index]++;
                                            });
                                          },
                                        )
                                      ],
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
              },
            ),
            ListView.builder(
              itemCount: productName.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image(
                                height: 120,
                                width: 120,
                                image: NetworkImage(
                                    productImage[index].toString())),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productName[index].toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    'Size',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        width: 100,
                                        child: RadioMenuButton(
                                          value: '200ml',
                                          groupValue: _selectedValue,
                                          onChanged: (selectedvalue) {
                                            setState(() => _selectedValue =
                                                selectedvalue!);
                                          },
                                          style: ButtonStyle(
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              elevation:
                                                  const MaterialStatePropertyAll(
                                                      2),
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      Color.fromARGB(
                                                          255, 214, 232, 194))),
                                          child: const Text('200ml'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 100,
                                        child: RadioMenuButton(
                                          value: '500ml',
                                          groupValue: _selectedValue,
                                          onChanged: (selectedvalue) {
                                            setState(() => _selectedValue =
                                                selectedvalue!);
                                          },
                                          style: ButtonStyle(
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              elevation:
                                                  const MaterialStatePropertyAll(
                                                      2),
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      Color.fromARGB(
                                                          255, 214, 232, 194))),
                                          child: const Text('500ml'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Cart()),
                                        );
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              colors: [
                                                Colors.orange,
                                                Colors.pink
                                              ],
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.centerLeft,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                          child: Text(
                                            'Add to cart',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 115,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.remove),
                                          onPressed: () {
                                            setState(() {
                                              if (cartItems[index] > 0) {
                                                cartItems[index]--;
                                              }
                                            });
                                          },
                                        ),
                                        Text(cartItems[index].toString()),
                                        IconButton(
                                          icon: const Icon(Icons.add),
                                          onPressed: () {
                                            setState(() {
                                              cartItems[index]++;
                                            });
                                          },
                                        )
                                      ],
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
              },
            ),
            ListView.builder(
              itemCount: productName.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image(
                                height: 120,
                                width: 120,
                                image: NetworkImage(
                                    productImage[index].toString())),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productName[index].toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text(
                                    'Size',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        width: 100,
                                        child: RadioMenuButton(
                                          value: '200ml',
                                          groupValue: _selectedValue,
                                          onChanged: (selectedvalue) {
                                            setState(() => _selectedValue =
                                                selectedvalue!);
                                          },
                                          style: ButtonStyle(
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              elevation:
                                                  const MaterialStatePropertyAll(
                                                      2),
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      Color.fromARGB(
                                                          255, 214, 232, 194))),
                                          child: const Text('200ml'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 100,
                                        child: RadioMenuButton(
                                          value: '500ml',
                                          groupValue: _selectedValue,
                                          onChanged: (selectedvalue) {
                                            setState(() => _selectedValue =
                                                selectedvalue!);
                                          },
                                          style: ButtonStyle(
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              elevation:
                                                  const MaterialStatePropertyAll(
                                                      2),
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      Color.fromARGB(
                                                          255, 214, 232, 194))),
                                          child: const Text('500ml'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Cart()),
                                        );
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              colors: [
                                                Colors.orange,
                                                Colors.pink
                                              ],
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.centerLeft,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                          child: Text(
                                            'Add to cart',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 115,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.remove),
                                          onPressed: () {
                                            setState(() {
                                              if (cartItems[index] > 0) {
                                                cartItems[index]--;
                                              }
                                            });
                                          },
                                        ),
                                        Text(cartItems[index].toString()),
                                        IconButton(
                                          icon: const Icon(Icons.add),
                                          onPressed: () {
                                            setState(() {
                                              cartItems[index]++;
                                            });
                                          },
                                        )
                                      ],
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
              },
            ),
          ],
        ),
      ),
    );
  }
}
