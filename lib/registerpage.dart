import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/loginpage.dart';
import 'package:motion_toast/motion_toast.dart';

import 'api.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obsecureText = true;
  bool _secureText = true;
  // ignore: prefer_typing_uninitialized_variables
  var orientation, size, height, width;

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _mobile = TextEditingController();
  final _password = TextEditingController();
  final _repassword = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'JUiCE',
                style: TextStyle(
                    fontSize: 80,
                    color: Colors.orangeAccent,
                    fontFamily: 'Lobster-Regular'),
              ),
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
                      controller: _name,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: 'NAME'),
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
                      controller: _email,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: 'EMAIL'),
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
                      controller: _mobile,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.mobile_friendly),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: 'MOBILE'),
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
                      controller: _password,
                      obscureText: _secureText,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.password),
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
                              borderSide: BorderSide(color: Colors.black)),
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
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
                      controller: _repassword,
                      obscureText: _obsecureText,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.password),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obsecureText = !_obsecureText;
                              });
                            },
                            child: Icon(_obsecureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          border: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: 'RE-ENTER PASSWORD'),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    registerUser(context);
                  },
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      colors: [Colors.red, Colors.orange],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'REGISTER NOW',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Row(
                  children: [
                    Text(
                      'login',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void registerUser(BuildContext context) async {
    final name = _name.text;
    final email = _email.text;
    final mobile = _mobile.text;
    final password = _password.text;

    if (name.isEmpty) {
      showErrorMessage('Please enter your name',context);
    } else if (email.isEmpty) {
      showErrorMessage('Please enter email id',context);
    } else if (mobile.isEmpty) {
      showErrorMessage('Please enter mobile number',context);
    } else if (password.isEmpty) {
      showErrorMessage('Please enter your password',context);
    } else {
      final formData = FormData.fromMap({
        'name': name,
        'email': email,
        'mobile': mobile,
        'password': password,
      });

      final result = await ApiClass().registerUserApi(formData);
      print("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEeeeee $result");
      if (result != null) {
        if (result.status == true) {
          showSuccessMessage(result.message!,context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        } else {
          showErrorMessage(result.message!,context);
        }
      }
    }
  }

  void showErrorMessage(
    String message,BuildContext context
  ) {
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

  void showSuccessMessage (
    String message, BuildContext context
  ) {
      const snackdemo =  SnackBar(content: Text('Success'),
   backgroundColor: Colors.lightGreen,
   elevation: 10,
   behavior: SnackBarBehavior.floating,
   margin: EdgeInsets.all(5),
   );
     ScaffoldMessenger.of(context).showSnackBar(snackdemo);
  }
}
