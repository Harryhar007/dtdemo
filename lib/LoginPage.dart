import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'Login.dart';
import 'Register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        title: const Text("DT demo"),
        backgroundColor: Colors.black38,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
            left: 20, right: 20, top: size.height * 0.5, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: 200,
                child: TextButton(
                  onPressed: () {
                    startLogin(context);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                )),
            SizedBox(
                width: 200,
                child: TextButton(
                  onPressed: () {
                    startRegister(context);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                )),
            const Text("Sign in with",
                style: TextStyle(fontSize: 15, color: Colors.white)),
            GestureDetector(
                onTap: () {
                  AuthService().signInWIthGoogle();
                },
                child: const Image(
                    width: 50, image: AssetImage('assets/google.png'))),
          ],
        ),
      ),
    );
  }
}
