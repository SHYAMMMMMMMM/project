import 'package:flutter/material.dart';
import 'package:flutter_project/loginpage.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  // ignore: prefer_typing_uninitialized_variables
  var orientation, size, height, width;
  bool _obsecureText = true;
  bool _secureText = true;
  bool _safetyText = true;
  final oldpass = TextEditingController();
  final newpass = TextEditingController();
  final repass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        body: ListView(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: const Text(
                'Change Password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: oldpass,
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
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Old Password'),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: newpass,
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
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'New Password'),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: repass,
                  obscureText: _safetyText,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _safetyText = !_safetyText;
                          });
                        },
                        child: Icon(_safetyText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Re-enter Password'),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
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
                        'Update',
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
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cancel',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
