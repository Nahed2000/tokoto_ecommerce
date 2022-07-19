import 'package:flutter/material.dart';
import 'package:tokoto/widget/custom_button.dart';

import '../../widget/custom_text_field.dart';
import '../../widget/social_media_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late TextEditingController _emailController;

  @override
  void initState() {
    // TODO: implement initState
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    super.dispose();
  }

  bool checkBox = false;

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
          'Forget Password',
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
        padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Forget Password',
                  style: TextStyle(fontSize: 36, color: Colors.black),
                ),
                SizedBox(height: 8),
                Text(
                  'Please enter your email and we will send',
                  style: TextStyle(fontSize: 16, color: Color(0xff757575)),
                ),
                SizedBox(height: 4),
                Text(
                  'you a link to return to your account',
                  style: TextStyle(fontSize: 16, color: Color(0xff757575)),
                ),
              ],
            ),
            const SizedBox(height: 80),
            CustomTextField(
              hintText: 'Enter your Email',
              icon: Icons.email_outlined,
              labelText: 'Email',
              keyboard: TextInputType.text,
              controller: _emailController,
            ),
            const SizedBox(height: 80),
            CustomButton(onPress: () {}, title: 'Continue'),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don’t have an account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sing Up',
                    style: TextStyle(
                      color: Color(0xffF78143),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
