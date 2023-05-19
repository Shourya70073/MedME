import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;
import 'package:tflite_flutter/tflite_flutter.dart';

class brainTumour extends StatefulWidget {
  const brainTumour({super.key});

  @override
  State<brainTumour> createState() => _brainTumourState();
}

class _brainTumourState extends State<brainTumour> {
  Interpreter? interpreter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    intialize();
  }

  intialize() async {
    interpreter = await tfl.Interpreter.fromAsset('images/brain_tumor.tflite');
   
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
