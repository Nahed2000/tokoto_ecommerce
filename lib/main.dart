import 'package:flutter/material.dart';
import 'package:tokoto/screen/login_screen.dart';
import 'package:tokoto/screen/out_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login_screen',
      routes: {
        '/page_view_screen': (context) => const PageViewScreen(),
        '/login_screen': (context) => const LoginScreen(),
      },
    );
  }
}
