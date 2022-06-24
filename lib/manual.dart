import 'package:flutter/material.dart';
import 'Login.dart';
import 'Register.dart';

class manual extends StatelessWidget {

  startRegister(BuildContext context) async {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Register()),
    );

  }
  startLogin(BuildContext context) async {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("Proceed without Google", style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                startLogin(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black87),
              ),
              child: const Text(
                "LOGIN",
                style: TextStyle(fontSize: 20, color: Colors.white),

              ),
            ),
            TextButton(
              onPressed: () {
                startRegister(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black87),
              ),
              child: const Text(
                "REGISTER",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),

          ],



        )
      ),
    );
  }
}
