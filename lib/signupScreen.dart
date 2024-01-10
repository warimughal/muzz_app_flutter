// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_local_variable, dead_code, use_build_context_synchronously, avoid_print, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:muzz_app_flutter/homeScreen.dart';
import 'package:muzz_app_flutter/loginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Image.asset(
                'assets/Logo.png',
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Just a quick few steps to get started",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 40),
                      TextFormField(
                        controller: nameController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          prefixIconConstraints: BoxConstraints(minWidth: 40),
                          hintText: "Name",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.orange),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: emailController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: ImageIcon(
                            AssetImage('assets/gmail.png'),
                            color: Colors.black,
                          ),
                          prefixIconConstraints: BoxConstraints(minWidth: 40),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.orange),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: passwordController,
                        style: TextStyle(color: Colors.black),
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: ImageIcon(
                            AssetImage('assets/password.png'),
                            color: Colors.black,
                          ),
                          prefixIconConstraints: BoxConstraints(minWidth: 40),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.orange),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: confirmpasswordController,
                        style: TextStyle(color: Colors.black),
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: ImageIcon(
                            AssetImage('assets/password.png'),
                            color: Colors.black,
                          ),
                          prefixIconConstraints: BoxConstraints(minWidth: 40),
                          hintText: "Re-type password",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.orange),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
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
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 150),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?"),
                            SizedBox(width: 5),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
