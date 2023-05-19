import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:medme/medInfo.dart';

class RecognizePage extends StatefulWidget {
  final String? path;
  const RecognizePage({Key? key, this.path}) : super(key: key);

  @override
  State<RecognizePage> createState() => _RecognizePageState();
}

class _RecognizePageState extends State<RecognizePage> {
  bool _isBusy = false;

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    final InputImage inputImage = InputImage.fromFilePath(widget.path!);

    processImage(inputImage);
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Loading",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Color(0xfffDBFB51),
        ),
        body: _isBusy == true
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  maxLines: MediaQuery.of(context).size.height.toInt(),
                  controller: controller,
                  decoration:
                      const InputDecoration(hintText: "Text goes here..."),
                ),
              ));
  }

  void processImage(InputImage image) async {
    List<String> medname = [
      "Otrivin Oxy",
      "Avamys Nasal Spray",
      "Paracetamol",
      "Cefpodoxime and Ofloxacin Tablets",
    ];
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

    setState(() {
      _isBusy = true;
    });

    final RecognizedText recognizedText =
        await textRecognizer.processImage(image);

    // controller.text = recognizedText.text;
    String data = controller.text;
    List<String> datay = data.split(" ");
    String med_name = "";

    for (String i in medname) {
      for (String j in datay) {
        double similarity =
            calculateSimilarity(i.toLowerCase(), j.toLowerCase());
        if (similarity > 0.4) {
          med_name = i;
          break; // Exit the loop once a match is found
        }
      }
    }
    print(datay);
    controller.text = med_name;
    print(med_name);
    Get.to(() => MedicineInfo());
    // End busy state
    setState(() {
      _isBusy = false;
    });
  }

  double calculateSimilarity(String word1, String word2) {
    Set<String> set1 = word1.split('').toSet();
    Set<String> set2 = word2.split('').toSet();

    int intersectionCount = set1.intersection(set2).length;
    int unionCount = set1.union(set2).length;

    return intersectionCount / unionCount;
  }
}
