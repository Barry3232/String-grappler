
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inherited_app/inherited_widget.dart';

import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
   return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _data = 'Current Data';

  void _updateData(String newData) {
    setState(() {
      _data = newData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DataProvider(
        data: _data,
        updateData: _updateData,
        child: const MaterialApp(
        title: 'Learning App',
          home: FirstScreen(),
    )
    );
  }
}









