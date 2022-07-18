import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Sign In',
          style: TextStyle(color: Color(0xff8B8B8B)),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
        child: Column(
          children: [
            const Text(
              ' Welcome Back',
              style: TextStyle(fontSize: 36, color: Colors.black),
            ),
            const SizedBox(height: 8),
            const Text(
              'Sign in with your email and password',
              style: TextStyle(fontSize: 16, color: Color(0xff757575)),
            ),
            const SizedBox(height: 4),
            const Text(
              'or continue with social media',
              style: const TextStyle(fontSize: 16, color: const Color(0xff757575)),
            ),
            const SizedBox(height: 40),
            TextField(
                decoration: InputDecoration(
              hintText: 'Enter your Email',
              label: Container(
                  padding: const EdgeInsets.only(bottom:4 , left: 8),
                  alignment: Alignment.centerLeft,
                  width: 130,
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // alignment: Alignment.topLeft,
                  child: const Text(
                    'Email',
                    style:  TextStyle(fontSize:18,color: Colors.black),
                    // textAlign: TextAlign.left,
                  )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:   const BorderSide(color: Colors.grey),

                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:   const BorderSide(color: Colors.grey),
            ))),

          ],
        ),
      ),
    );
  }
}
