import 'package:checkbox/navigation_page.dart';
import 'package:flutter/material.dart';

class MyHomePageAgree extends StatefulWidget {
  const MyHomePageAgree({Key? key}) : super(key: key);

  @override
  State<MyHomePageAgree> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageAgree> {

  bool agree = false;

  void _doSomething() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>NavPage()));
    // Do something
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Column(children: [
        Row(
          children: [
            Material(
              child: Checkbox(
                value: agree,
                onChanged: (value) {
                  setState(() {
                    agree = value ?? false;
                  });
                },
              ),
            ),
            const Text(
              'I have read and accept terms and conditions',
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
        ElevatedButton(
            onPressed: agree ? _doSomething : null,
            child: const Text('Continue'))
      ]),
    );
  }
}