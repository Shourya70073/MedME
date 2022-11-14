// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class symptomp extends StatefulWidget {
  const symptomp({super.key});

  @override
  State<symptomp> createState() => _symptompState();
}

class _symptompState extends State<symptomp> {
  bool a = false,
      b = false,
      c = false,
      d = false,
      e = false,
      f = false,
      g = false,
      h = false,
      i = false,
      j = false,
      k = false,
      l = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffF7F7F7),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              child: Image.asset("images/medme logo-01.png"),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          a = true;
                        });
                      },
                      child: Container(
                        child: Text("Headache"),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          b = true;
                        });
                      },
                      child: Container(
                        child: Text("Headache"),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          c = true;
                        });
                      },
                      child: Container(
                        child: Text("Headache"),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          d = true;
                        });
                      },
                      child: Container(
                        child: Text("Headache"),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          e = true;
                        });
                      },
                      child: Container(
                        child: Text("Headache"),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          f = true;
                        });
                      },
                      child: Container(
                        child: Text("Headache"),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          g = true;
                        });
                      },
                      child: Container(
                        child: Text("Headache"),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          h = true;
                        });
                      },
                      child: Container(
                        child: Text("Headache"),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          i = true;
                        });
                      },
                      child: Container(
                        child: Text(
                          "Headache",
                          style: TextStyle(),
                        ),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          j = true;
                        });
                      },
                      child: Container(
                        child: Text("Headache"),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (k == false)
                            k = true;
                          else
                            k = false;
                        });
                      },
                      child: Container(
                        child: Text("Headache"),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: k ? Color(0xfffDBFB51) : Color(0xfffF7F7F7),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (l == false)
                            l = true;
                          else
                            l = false;
                        });
                      },
                      child: Container(
                        child: Text("Headache"),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: l ? Color(0xfffDBFB51) : Color(0xfffF7F7F7),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
