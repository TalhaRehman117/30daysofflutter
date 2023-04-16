import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.light
      ),
    initialRoute: "/login",
      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => HomePage(),
        "/login":(context) => LoginPage()
      },
    );
  }
}
