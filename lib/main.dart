import 'package:flutter/material.dart';
import 'package:tokoto/screen/confirm_password.dart';
import 'package:tokoto/screen/forget_password.dart';
import 'package:tokoto/screen/login_screen.dart';
import 'package:tokoto/screen/out_boarding.dart';
import 'package:tokoto/screen/success_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/success_login',
      routes: {
        '/page_view_screen': (context) => const PageViewScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/forget_password_screen': (context) => const ForgetPassword(),
        '/confirm_password_screen': (context) => const ConfirmPassword(),
        '/success_login': (context) => const SuccessLogin(),
      },
    );
  }
}
