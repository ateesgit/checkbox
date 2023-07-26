import 'package:checkbox/navigation_group.dart';
import 'package:flutter/material.dart';

class MyHomePageGroup extends StatefulWidget {
  @override
  _MyHomePageGroupState createState() => _MyHomePageGroupState();
}

class _MyHomePageGroupState extends State<MyHomePageGroup> {
  List<String> selectedOptions = [];

  List<String> options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Group Example'),
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          return CheckboxListTile(
            title: Text(options[index]),
            value: selectedOptions.contains(options[index]),
            onChanged: (bool? value) {
              setState(() {
                if (value != null && value) {
                  selectedOptions.add(options[index]);
                } else {
                  selectedOptions.remove(options[index]);
                }
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NextScreen(selectedOptions: selectedOptions)));
          // Access the selected options
          print('Selected options: $selectedOptions');
        },
        child: Icon(Icons.save),
      ),
    );
  }
}