import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "Talha";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TR-Developers"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome from Talha Rehman"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
