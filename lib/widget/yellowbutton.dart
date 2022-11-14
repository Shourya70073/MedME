import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class yellowbutt extends StatelessWidget {
  String text;
  
  // ignore: use_key_in_widget_constructors
  yellowbutt({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: (Container(
        padding: EdgeInsets.only(left: 12, right: 40, top: 15, bottom: 15),
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(

          color: Color(0xfffDBFB51),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2, color: Colors.black),
        ),
      )),
    );
  }
}
