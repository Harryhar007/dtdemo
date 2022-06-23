import 'package:dtdemo/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Login(BuildContext context) async {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login(context)),
    );

  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        title: const Text("DTdemo"),
        backgroundColor: Colors.black38,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
            left: 20, right: 20, top: size.height * 0.2, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Welcome,\nSign in with",
                style: TextStyle(fontSize: 30, color: Colors.white)),
            GestureDetector(
                onTap: () {
                  AuthService().signInWIthGoogle();
                },
                child: const Image(
                    width: 150, image: AssetImage('assets/google.png'))),
            TextButton(
              onPressed: () {
                Login(context);
              },
              child: const Text(
                "Proceed without Google",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
