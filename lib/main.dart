import 'package:flutter/material.dart';
import 'package:tokoto/screen/auth/confirm_password.dart';
import 'package:tokoto/screen/auth/forget_password.dart';
import 'package:tokoto/screen/home_screen.dart';
import 'package:tokoto/screen/auth/login_screen.dart';
import 'package:tokoto/screen/out_boarding.dart';
import 'package:tokoto/screen/auth/success_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/page_view_screen',
      routes: {
        '/page_view_screen': (context) => const PageViewScreen(),
        '/home_screen':(context) => const HomeScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/forget_password_screen': (context) => const ForgetPassword(),
        '/confirm_password_screen': (context) => const ConfirmPassword(),
        '/success_login': (context) => const SuccessLogin(),
      },
    );
  }
}
