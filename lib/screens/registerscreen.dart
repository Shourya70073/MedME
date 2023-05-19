// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medme/widget/textfield.dart';
import 'package:medme/widget/yellowbutton.dart';

class registerscreen extends StatefulWidget {
  const registerscreen({Key? key}) : super(key: key);

  @override
  State<registerscreen> createState() => _registerscreenState();
}

class _registerscreenState extends State<registerscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        backgroundColor: Color(0xfffF7F7F7),
        body: SingleChildScrollView(
          child: Column(
           
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset("assets/images/medme logo-01.png"),
                ),
              ),
             
               SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child:textf(text: "Enter your email"),
              ),
               SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: textf(text: "Enter your password"),
              ),
               SizedBox(
                height: 30,
              ),
              yellowbutt(text: "Register",),
               SizedBox(
                height: 20,
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
              ),
            ],
          ),
        ),
      )),
    );
  }
}
