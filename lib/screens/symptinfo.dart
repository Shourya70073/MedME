import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Symptoms extends StatefulWidget {
  final data;
  int index;
  Symptoms({required this.data, required this.index});

  @override
  State<Symptoms> createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  List<String> symptoms = [
    "Fever",
    "Bitter Taste",
    "Runny Nose",
    "Cough",
    "Chest Pain",
    "Head Ache",
    "Stomach Ache",
    "Joint Pain"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const BackButton(color: Colors.black),
        title: Text(
          "Symptoms",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.9,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 177, 215, 9),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60)),
              border: Border.all(color: Colors.black)),
        ),
        Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              
              const SizedBox(
                height: 10,
              ),
              Text(
                symptoms[widget.index],
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 23),
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Medical Symptoms",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            widget.data["Reason"][0],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                            maxLines: 5,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            widget.data["Reason"][1],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                            maxLines: 5,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            widget.data["Reason"][2],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                            maxLines: 5,
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          const Text(
                            "Medication",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () async {
                              await launchUrl(Uri.parse(widget.data["Buy"][0]));
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 177, 215, 9),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Medication1",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      ),
                                      Icon(Icons.shopping_basket)
                                    ]),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () async {
                              await launchUrl(Uri.parse(widget.data["Buy"][1]));
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 177, 215, 9),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Medication2",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15),
                                      ),
                                      Icon(Icons.shopping_basket)
                                    ]),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 177, 215, 9),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Medication1",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15),
                                    ),
                                    Icon(Icons.shopping_basket)
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
