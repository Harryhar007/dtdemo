import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  goBackToPreviousScreen(BuildContext context){

    Navigator.pop(context);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Activity Screen"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {goBackToPreviousScreen(context);},
          child: const Text('Go Back To Previous Screen',
              style: TextStyle(fontSize: 20, color: Colors.white),
              ),
        ),
      ),
    );
  }
}