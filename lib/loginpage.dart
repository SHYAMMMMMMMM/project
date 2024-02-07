import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/forgotpassword.dart';
import 'package:flutter_project/frssery.dart';
import 'package:flutter_project/registerpage.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'api.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _secureText = true;
  // ignore: prefer_typing_uninitialized_variables
  var orientation, size, height, width;
  final _mail = TextEditingController();
  final _passcode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        body: ListView(
      children: [
        const Column(
          children: [
            Text(
              'JUiCE',
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.orangeAccent,
                  fontFamily: 'Lobster-Regular'),
            )
          ],
        ),
        const Row(
          children: [
            Text(
              'WE MAKE',
              style: TextStyle(fontSize: 40, color: Colors.grey),
            )
          ],
        ),
        const Row(
          children: [
            Text(
              'HEALTHY TASTE',
              style: TextStyle(fontSize: 40, color: Colors.grey),
            )
          ],
        ),
        const Row(
          children: [
            Text(
              'GOOD',
              style: TextStyle(fontSize: 40, color: Colors.grey),
            )
          ],
        ),
        SizedBox(
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextField(
                    controller: _mail,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: 'Email'),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextField(
                    controller: _passcode,
                    obscureText: _secureText,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password_outlined),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                          child: Icon(_secureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: 'PASSWORD'),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  SharedPreferences preferences =
                      await SharedPreferences.getInstance();
                  preferences.setString("email", _mail.text);
                  loginuser(context);
                },
                child: Container(
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
                        'LOG IN',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ForgotPass()),
                );
              },
              child: const Text(
                'Forgot password?',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: const Row(
                children: [
                  Text(
                    'Create new account',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }

  void loginuser(BuildContext context) async {
    final mail = _mail.text;
    final passcode = _passcode.text;

    if (mail.isEmpty) {
      showErrorMessage('Please enter email id', context);
    } else if (passcode.isEmpty) {
      showErrorMessage('Please enter your password', context);
    } else {
      final formData = FormData.fromMap({'email': mail, 'password': passcode});

      final result = await ApiClass().loginUserApi(formData);
      print("ssssssssssssssssssssss");
      if (result != null) {
        if (result.status == true) {
          showSuccessMessage(result.message!, context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Fressery()),
          );
        } else {
          showErrorMessage(result.message!, context);
        }
      }
    }
  }

  void showErrorMessage(String message, BuildContext context) {
    MotionToast.error(
      title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context);
  }

  void showSuccessMessage(String message, BuildContext context) {
   const snackdemo =  SnackBar(content: Text('Success'),
   backgroundColor: Colors.lightGreen,
   elevation: 10,
   behavior: SnackBarBehavior.floating,
   margin: EdgeInsets.all(5),
   );
     ScaffoldMessenger.of(context).showSnackBar(snackdemo);
  }
}
