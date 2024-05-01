import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inherited_app/second_screen.dart';

import 'inherited_widget.dart';

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = DataProvider.of(context)!;
    final data = dataProvider.data;

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 35,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(data)
                  ],
                )
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context){return SecondScreen();})
                  );
                },
                child: const Text('Go to next Screen')
            ),
          ],
        ),
      ),
    );
  }
}