import 'package:flutter/material.dart';
import 'package:tokoto/utility/helper.dart';
import 'package:tokoto/widget/custom_button.dart';

import '../../widget/custom_text_field.dart';
import '../../widget/social_media_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with Helper {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _passwordConfirmationController;
  late TextEditingController _addressController;

  @override
  void initState() {
    // TODO: implement initState
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordConfirmationController = TextEditingController();
    _addressController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
    _addressController.dispose();
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
          'Sign Up',
          style: TextStyle(color: Color(0xff8B8B8B)),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
          child: Column(
            children: [
              const Text(
                'Register Account',
                style: TextStyle(fontSize: 36, color: Colors.black),
              ),
              const SizedBox(height: 8),
              const Text(
                'Complete your details or continue',
                style: TextStyle(fontSize: 16, color: Color(0xff757575)),
              ),
              const SizedBox(height: 4),
              const Text(
                'with social media',
                style: TextStyle(fontSize: 16, color: Color(0xff757575)),
              ),
              const SizedBox(height: 50),
              CustomTextField(
                hintText: 'Enter your Email',
                icon: Icons.email_outlined,
                labelText: 'Email',
                keyboard: TextInputType.text,
                controller: _emailController,
              ),
              const SizedBox(height: 23),
              CustomTextField(
                hintText: 'Enter your password',
                icon: Icons.lock_outline,
                labelText: 'password',
                obscureText: true,
                keyboard: TextInputType.visiblePassword,
                controller: _passwordController,
              ),
              const SizedBox(height: 23),
              CustomTextField(
                hintText: 'Re-enter your password',
                icon: Icons.lock_outline,
                labelText: 'Confirmation Password',
                obscureText: true,
                keyboard: TextInputType.visiblePassword,
                controller: _passwordConfirmationController,
              ),
              const SizedBox(height: 23),
              CustomTextField(
                hintText: 'Enter your address',
                icon: Icons.location_on_outlined,
                labelText: 'Address ',
                keyboard: TextInputType.streetAddress,
                controller: _addressController,
              ),
              const SizedBox(height: 23),
              CustomButton(
                  onPress: () async => await performRegister(), title: 'Continue'),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'By continuing your confirm that you agree',
                    style: TextStyle(
                      color: Color(0xff757575),
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    'with our Term and Condition',
                    style: TextStyle(
                      color: Color(0xff757575),
                      fontSize: 13,
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

  Future<void> performRegister() async {
    if (checkData()) {
      await register();
      print(checkData());
    }
    print(checkData());
  }

  bool checkData() {
    if (_emailController.text.isNotEmpty &&
        _passwordConfirmationController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      if (_passwordConfirmationController.text == _passwordController.text) {
        return true;
      }
      showSnackBar(context,
          message: 'password and confirmation password dose not match',
          error: true);
      return false;
    }
    showSnackBar(context,
        message: 'Required Data, Please enter your email and password',
        error: true);
    return false;
  }

  Future<void> register() async {
    Navigator.pushReplacementNamed(context, '/home_screen');
  }
}
