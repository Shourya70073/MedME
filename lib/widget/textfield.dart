import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class textf extends StatefulWidget {
  final text;
  const textf({@required this.text});

  @override
  State<textf> createState() => _textfState();
}

class _textfState extends State<textf> {
  @override
  Widget build(BuildContext context) {
    return (TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(), hintText: widget.text),
    ));
  }
}
