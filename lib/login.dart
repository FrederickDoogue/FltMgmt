import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {

  //text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body : SafeArea(
        child : Center(
          child : SingleChildScrollView(
            child: Column(
              children: [
                Text("Daly Tyres Fleet Management",
                  style: TextStyle(
                    fontSize: 30
                  ),
                ),
                SizedBox(height:100),
                Icon(
                  Icons.construction,
                  size: 100,
                ),
                SizedBox(height:100),
                
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(50),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                  ),
                ),
                SizedBox(height:50),

                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                ),
                            ),
                        ),
                    ),
                ),
                SizedBox(height:50),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GestureDetector(
                    onTap: login,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )
                          ),
                        ),
                      ),
                    ),
                  ),
              ]
            ),
          )
        )
      )
    );
  }
}