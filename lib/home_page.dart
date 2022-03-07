import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome guys in $days of flutter!!!"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
