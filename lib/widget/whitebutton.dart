import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class whitebutt extends StatelessWidget {
  String text;
  String image;
  Color color;
  // ignore: use_key_in_widget_constructors
  whitebutt({required this.text, required this.image,required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: (Container(
        padding: EdgeInsets.only(left: 12, right: 40, top: 15, bottom: 15),
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              child: Image.asset("images/$image"),
            ),
            SizedBox(
              width: 60,
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2, color: Colors.black),
        ),
      )),
    );
  }
}
