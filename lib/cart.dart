import 'package:flutter/material.dart';
import 'package:flutter_project/cartdrawer.dart';
import 'package:flutter_project/frssery.dart';
import 'package:flutter_project/notification.dart';
import 'package:flutter_project/payment.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  String deliveryslot = 'Morning';
  var delivery = [
    'Morning',
    'Afternoon',
    'Evening',
    'Night',
  ];
  List<String> checkboxvalue = [];
  void _onCheckedboxChanged(String value, bool isChecked) {
    setState(() {
      if (isChecked) {
        checkboxvalue.add(value);
      } else {
        checkboxvalue.remove(value);
      }
    });
  }

  // ignore: prefer_typing_uninitialized_variables
  var orientation, size, height, width;
  DateTime _startTime = DateTime.now();
  void _startDatePicker() async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: _startTime,
      firstDate: DateTime(1996),
      lastDate: DateTime(2025),
    );

    if (selectedDate != null && selectedDate != _startTime) {
      setState(() {
        _startTime = selectedDate;
      });
    }
  }

  DateTime _endTime = DateTime.now();
  void _endDatePicker() async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: _endTime,
      firstDate: DateTime(1996),
      lastDate: DateTime(2025),
    );

    if (selectedDate != null && selectedDate != _endTime) {
      setState(() {
        _endTime = selectedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          backgroundColor: Colors.white,
          drawer: const Cartdrawer(),
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
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.grey)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Start Subscription',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.black),
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
                  const Positioned(
                      right: 10,
                      top: 60,
                      child: Text(
                        '1x Rs.79',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      )),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Fressery()),
                          );
                        },
                      )),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 170, 10, 0),
                    height: 1.0,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 244, 207, 204),
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
                      child: Container(
                          height: 20,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.grey)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Start Subscription',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.black),
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
                  const Positioned(
                      right: 10,
                      top: 210,
                      child: Text(
                        '1x Rs.79',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      )),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 320, 10, 0),
                    height: 1.0,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 244, 207, 204),
                  ),
                  SizedBox(
                    height: 700,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: const Row(
                        children: [
                          Text(
                            'Start Date',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 700,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(160, 0, 0, 0),
                      child: const Row(
                        children: [
                          Text(
                            'End Date',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 750,
                    child: Row(
                      children: [
                        Container(
                          height: 19,
                          width: 90,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 238, 211, 209),
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(_startTime.toString()),
                        ),
                        IconButton(
                          color: Colors.red,
                          icon: const Icon(Icons.calendar_month),
                          onPressed: _startDatePicker,
                        ),
                        Row(
                          children: [
                            Container(
                                height: 19,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 249, 223, 221),
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(_endTime.toString())),
                            IconButton(
                              color: Colors.red,
                              icon: const Icon(Icons.calendar_month),
                              onPressed: _endDatePicker,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 425, 0, 0),
                    child: const Row(
                      children: [
                        Text(
                          'Day of Week',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 440,
                    child: Column(
                      children: <Widget>[
                        Checkbox(
                          activeColor: const Color.fromARGB(255, 135, 243, 110),
                          value: checkboxvalue.contains('Sunday'),
                          onChanged: (isChecked) {
                            setState(() {
                              _onCheckedboxChanged('Sunday', isChecked!);
                            });
                          },
                        ),
                        const Text('SUN')
                      ],
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 440,
                    child: Column(
                      children: <Widget>[
                        Checkbox(
                          activeColor: const Color.fromARGB(255, 135, 243, 110),
                          value: checkboxvalue.contains('Monday'),
                          onChanged: (isChecked) {
                            setState(() {
                              _onCheckedboxChanged('Monday', isChecked!);
                            });
                          },
                        ),
                        const Text('MON')
                      ],
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 440,
                    child: Column(
                      children: <Widget>[
                        Checkbox(
                          activeColor: const Color.fromARGB(255, 135, 243, 110),
                          value: checkboxvalue.contains('Tuesday'),
                          onChanged: (isChecked) {
                            setState(() {
                              _onCheckedboxChanged('Tuesday', isChecked!);
                            });
                          },
                        ),
                        const Text('TUE')
                      ],
                    ),
                  ),
                  Positioned(
                    left: 120,
                    top: 440,
                    child: Column(
                      children: <Widget>[
                        Checkbox(
                          activeColor: const Color.fromARGB(255, 135, 243, 110),
                          value: checkboxvalue.contains('Wednesday'),
                          onChanged: (isChecked) {
                            setState(() {
                              _onCheckedboxChanged('Wednesday', isChecked!);
                            });
                          },
                        ),
                        const Text('WED')
                      ],
                    ),
                  ),
                  Positioned(
                    left: 160,
                    top: 440,
                    child: Column(
                      children: <Widget>[
                        Checkbox(
                          activeColor: const Color.fromARGB(255, 135, 243, 110),
                          value: checkboxvalue.contains('Thursday'),
                          onChanged: (isChecked) {
                            setState(() {
                              _onCheckedboxChanged('Thursday', isChecked!);
                            });
                          },
                        ),
                        const Text('THU')
                      ],
                    ),
                  ),
                  Positioned(
                    left: 200,
                    top: 440,
                    child: Column(
                      children: <Widget>[
                        Checkbox(
                          activeColor: const Color.fromARGB(255, 135, 243, 110),
                          value: checkboxvalue.contains('Friday'),
                          onChanged: (isChecked) {
                            setState(() {
                              _onCheckedboxChanged('Friday', isChecked!);
                            });
                          },
                        ),
                        const Text('FRI')
                      ],
                    ),
                  ),
                  Positioned(
                    left: 240,
                    top: 440,
                    child: Column(
                      children: <Widget>[
                        Checkbox(
                          activeColor: const Color.fromARGB(255, 135, 243, 110),
                          value: checkboxvalue.contains('Saturday'),
                          onChanged: (isChecked) {
                            setState(() {
                              _onCheckedboxChanged('Saturday', isChecked!);
                            });
                          },
                        ),
                        const Text('SAT')
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 520, 10, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery slot',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Row(
                          children: [
                            Text(
                              'Total amount',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 580, 10, 0),
                    height: 1.0,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 237, 203, 200),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 525, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 14, 0, 0),
                          height: 30,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 234, 195, 192),
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5)),
                          child: DropdownButton(
                            dropdownColor:
                                const Color.fromARGB(255, 243, 226, 225),
                            underline: const SizedBox(),
                            value: deliveryslot,
                            icon: const Icon(Icons.arrow_drop_down_sharp),
                            items: delivery.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                deliveryslot = newValue!;
                              });
                            },
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '15 timesx 1item = Rs.79',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 600,
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
                    top: 600,
                    child: Text(
                      'Raw pomegranate',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  const Positioned(
                    left: 130,
                    top: 630,
                    child: Text(
                      'Size',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ),
                  Positioned(
                    left: 130,
                    top: 645,
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
                    top: 645,
                    child: InkWell(
                      onTap: () {},
                      focusColor: Colors.amber,
                      child: Container(
                          height: 20,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.grey)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Start Subscription',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.black),
                              )
                            ],
                          )),
                    ),
                  ),
                  Positioned(
                      left: 125,
                      top: 680,
                      child: IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {},
                      )),
                  Positioned(
                      left: 180,
                      top: 680,
                      child: IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {},
                      )),
                  const Positioned(
                      right: 10,
                      top: 620,
                      child: Text(
                        '1x Rs.79',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      )),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 730, 10, 0),
                    height: 1.0,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 242, 205, 203),
                  ),
                  const Positioned(
                      left: 10,
                      top: 745,
                      child: Text(
                        'Shipping address',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 760, 10, 0),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 245, 249),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const Positioned(
                    left: 20,
                    top: 772,
                    child: Text(
                      'Glenn maxwell',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ),
                  const Positioned(
                    left: 20,
                    top: 783,
                    child: Text(
                      'Adress line 1',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 778,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Change',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Positioned(
                      left: 10,
                      top: 820,
                      child: Text(
                        'Coupon Code',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 840, 10, 0),
                    height: 30,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 245, 249),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const Positioned(
                    left: 20,
                    top: 848,
                    child: Text(
                      'ABX2588T',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 840,
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(3)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {},
                              child: const Text(
                                'Activate',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 890, 10, 0),
                    height: 1.0,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 242, 205, 203),
                  ),
                  const Positioned(
                    right: 90,
                    top: 910,
                    child: Text(
                      'Bill Total:',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  const Positioned(
                    right: 30,
                    top: 910,
                    child: Text(
                      'Rs.2580',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  const Positioned(
                    right: 90,
                    top: 930,
                    child: Text(
                      'Discount:',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  const Positioned(
                    right: 30,
                    top: 930,
                    child: Text(
                      'Rs.580',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  const Positioned(
                    right: 90,
                    top: 950,
                    child: Text(
                      'Grand Total:',
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                  const Positioned(
                    right: 30,
                    top: 950,
                    child: Text(
                      'Rs.2580',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Payment()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
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
                            'PAY NOW',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
