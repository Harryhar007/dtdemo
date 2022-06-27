import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final genders = ['Male', 'Female', 'Prefer not to specify'];

  String? value;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          "Register Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white70,
                    filled: true,
                    hintText: 'First Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white70,
                    filled: true,
                    hintText: 'Last Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white70,
                    filled: true,
                    hintText: 'Email ID',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white70,
                ),
                child: DropdownButton(
                    value: value,
                    borderRadius: BorderRadius.circular(10),
                    hint: const Text('Gender',
                        style: TextStyle(color: Colors.black)),
                    items: genders.map(buildMenuItem).toList(),
                    onChanged: (value) =>
                        setState(() => this.value = value as String?)),
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
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white70,
                    filled: true,
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const Text(
                "Password must contain at least 1 uppercase letter , 1 lowercase letter, 1 numerical and 1 special"
                " character. \nPassword length must be at least 6 characters",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              TextButton(
                onPressed: () {
                  null;
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(color: Colors.black),
      ));
}
