import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'first_screen.dart';
import 'inherited_widget.dart';

class FourthScreen extends StatelessWidget{
  FourthScreen({super.key});
  final _controller = TextEditingController();
  final String name = '';

  @override
  Widget build(BuildContext context) {
    final dataProvider = DataProvider.of(context)!;
    final data = dataProvider.data;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Screen'),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(name),
              Padding(
                padding: const EdgeInsets.all(130.0),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder()
                  ),
                  controller: _controller,
                  maxLength: 1,
                  onChanged: (value){
                    LengthLimitingTextInputFormatter(1);
                    dataProvider.updateData("$data$value");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context){return const FirstScreen();})
                    );

                  },
                ),
              ),

              // ElevatedButton(
              //     onPressed: () {
              //
              //
              //     },
              //     child: const Text('Go to next Screen')
              // ),
            ],

          ),
        ),
      ),

    );

  }
}
