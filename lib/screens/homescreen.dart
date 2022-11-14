import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class homescreen extends StatefulWidget {
  final result;
  // ignore: use_key_in_widget_constructors
  const homescreen({@required this.result});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              child: Image.network(widget.result.photoUrl),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(widget.result.displayName),
          ),
          
          Container(
            child: Text(widget.result.email),
          )
        ],
      ),
    ));
  }
}
