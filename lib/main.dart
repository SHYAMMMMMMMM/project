import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/registerpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      title: 'JUICERY',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  // ignore: prefer_typing_uninitialized_variables
  var orientation,size,height,width;
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const RegisterPage())));
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.redAccent, Color.fromARGB(255, 234, 207, 166)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const  Text(
              'JUiCE',
              style: TextStyle(
                  fontSize: 90,
                  color: Colors.white,
                  fontFamily: 'Lobster-Regular'),
            ),
            Container(
              margin:const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child:const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'WE MAKE',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin:const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child:const Text(
                    'HEALTHY TASTE',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    margin:const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child:const Text(
                    'GOOD',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}