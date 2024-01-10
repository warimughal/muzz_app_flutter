// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_local_variable, dead_code, use_build_context_synchronously, avoid_print, deprecated_member_use, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:muzz_app_flutter/loginScreen.dart';
import 'package:muzz_app_flutter/signupScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Image.asset(
                      'assets/English.png',
                      width: 50,
                    ),
                    SizedBox(width: 3),
                    Text(
                      'English',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/Logo.png',
                      width: 50,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Pure Pairing',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Pure Intentions, Pure Pairing',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  child: Container(
                    width: double.infinity,
                    child: Divider(
                      color: Colors.orange,
                      thickness: 3.0,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Column(
                  children: [
                    SizedBox(
                      width: 230,
                      child: ElevatedButton(
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 230,
                      child: ElevatedButton(
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Or sign in with'),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'assets/Facebook.png',
                              width: 50,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'assets/Google.png',
                              width: 50,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'assets/Apple.png',
                              width: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Log in as ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Mahram',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
