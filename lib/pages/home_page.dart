import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "Talha";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TR-Online Shopping Store"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome on my Store "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
