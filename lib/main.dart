import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:test_app/pages/home_page.dart';
import 'package:test_app/pages/login_page.dart';
// ignore: depend_on_referenced_packages
import 'package:test_app/utils/routes.dart';
import 'package:test_app/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
