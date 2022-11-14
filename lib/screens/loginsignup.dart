// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medme/screens/registerscreen.dart';
import 'package:medme/screens/signinscreen.dart';

class loginsignup extends StatefulWidget {
  const loginsignup({Key? key}) : super(key: key);

  @override
  State<loginsignup> createState() => _loginsignupState();
}

class _loginsignupState extends State<loginsignup> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color(0xfffF7F7F7),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("images/medme logo-01.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Container(
                  height: 200,
                  child: Image.asset("images/healthbb.png"),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "It is health that is real wealth",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "not pieces of gold and silver.",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return registerscreen();
                    }));
                  },
                  child: Container(
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "Register",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                    )),
                    padding: EdgeInsets.only(
                        left: 40, right: 40, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.black
                      ),
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfffDBFB51)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return signin();
                }));
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  child: Container(
                    child: Center(
                        child: Text(
                      "Sign In",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                    )),
                    padding: EdgeInsets.only(
                        left: 40, right: 40, top: 15, bottom: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 2, color: Colors.black)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Text("By signing up you accept the Terms of"),
                  Text(
                    "Service and Privacy Policy.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
