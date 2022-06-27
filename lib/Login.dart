import 'dart:ffi';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final   size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          "LOGIN PAGE",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.only(left: 20, right: 20, top: 180, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white70,
                    filled: true,
                    hintText: 'Email ID',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white70,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              TextButton(
                onPressed: () {
                  null;
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    null;
                  },
                  child: const Text("Forgot Password ??",
                      style: TextStyle(fontSize: 15, color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }
}
