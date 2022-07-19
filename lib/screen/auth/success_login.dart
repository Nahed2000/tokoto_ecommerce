import 'package:flutter/material.dart';
import 'package:tokoto/widget/custom_button.dart';

import '../../widget/custom_text_field.dart';
import '../../widget/social_media_button.dart';

class SuccessLogin extends StatefulWidget {
  const SuccessLogin({Key? key}) : super(key: key);

  @override
  State<SuccessLogin> createState() => _SuccessLoginState();
}

class _SuccessLoginState extends State<SuccessLogin> {
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
          'Success Login',
          style: TextStyle(color: Color(0xff8B8B8B)),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 100.0, left: 20, right: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/success.png'),
            const SizedBox(height: 100),
            const Text(
              'Login Success',
              style: TextStyle(fontSize: 36, color: Colors.black),
            ),
            const SizedBox(height: 8),
            const Text(
              'Now you\'re ready to go shopping',
              style: TextStyle(fontSize: 16, color: Color(0xff757575)),
            ),
            const SizedBox(height: 100),
            CustomButton(
              onPress: () {},
              title: 'Back to home',
              width: 190,
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
