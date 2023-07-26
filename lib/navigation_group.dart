import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  // constructor screen pass
  final List<String> selectedOptions;
  const NextScreen({super.key,required this.selectedOptions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text("Selected Options:$selectedOptions"),
      ) ,
    );
  }
}