import 'package:flutter/material.dart';
import 'package:tokoto/utility/helper.dart';
import 'package:tokoto/widget/custom_button.dart';

import '../../widget/custom_text_field.dart';
import '../../widget/social_media_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helper {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    // TODO: implement initState
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
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
          'Sign In',
          style: TextStyle(color: Color(0xff8B8B8B)),
        ),
        // leading: IconButton(
        //   onPressed: () => Navigator.pop(context),
        //   icon: const Icon(
        //     Icons.arrow_back_ios_new,
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                style: TextStyle(fontSize: 16, color: Color(0xff757575)),
              ),
              const SizedBox(height: 40),
              const SizedBox(height: 70),
              CustomTextField(
                hintText: 'Enter your Email',
                icon: Icons.email_outlined,
                labelText: 'Email',
                keyboard: TextInputType.text,
                controller: _emailController,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hintText: 'Enter your password',
                icon: Icons.lock_outline,
                labelText: 'password',
                obscureText: true,
                keyboard: TextInputType.visiblePassword,
                controller: _passwordController,
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Checkbox(
                              activeColor: const Color(0xffFF8B41),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: const BorderSide(
                                    color: Colors.grey,
                                  )),
                              value: checkBox,
                              onChanged: (value) {
                                setState(() {
                                  if (value != null) {
                                    checkBox = value;
                                  }
                                });
                              }),
                        ),
                        const SizedBox(width: 5),
                        const Text('Remember me'),
                      ],
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/forget_password_screen'),
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 45),
              CustomButton(
                  onPress: () async => await performLogin(), title: 'Continue'),
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaButton(
                      image: 'assets/images/google-icon.png', onPress: () {}),
                  const SizedBox(width: 10),
                  SocialMediaButton(
                      image: 'assets/images/facebook-2.png', onPress: () {}),
                  const SizedBox(width: 10),
                  SocialMediaButton(
                      image: 'assets/images/twitter-3.png', onPress: () {}),
                ],
              ),
              const SizedBox(height: 20),
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
                    onPressed: () =>
                        Navigator.pushNamed(context, '/register_screen'),
                    child: const Text(
                      'Sing Up',
                      style: TextStyle(
                        color: Color(0xffF78143),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> performLogin() async {
    if (checkData()) {
      await login();
      print(checkData());
    }
    print(checkData());
  }

  bool checkData() {
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(context,
        message: 'Required Data, Please enter your email and password',
        error: true);
    return false;
  }

  Future<void> login() async {
    Navigator.pushReplacementNamed(context, '/home_screen');
  }
}
