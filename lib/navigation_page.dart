import 'package:flutter/material.dart';

class NavPage extends StatelessWidget {
  const NavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            child: Text("Welcome to the page",style: TextStyle(fontSize: 18),),
          ),
        ),
      ),
    );
  }
}
