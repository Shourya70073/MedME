// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_local_variable, deprecated_member_use, prefer_collection_literals

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobile_vision_2/flutter_mobile_vision_2.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medme/screens/result.dart';
import 'package:medme/services/imagecropper.dart';
import 'package:medme/services/imagepicker.dart';

class medscan extends StatefulWidget {
  const medscan({super.key});

  @override
  State<medscan> createState() => _medscanState();
}

class _medscanState extends State<medscan> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Med Scan",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color(0xfffDBFB51),
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, right: 20, left: 20, bottom: 10),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Center(child: Text("CAMERA AREA",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),)),
                    SizedBox(
                      height: 400,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Place your medicine within the camera frame.",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            height: 2,
                            color: Colors.black,
                          ),
                          GestureDetector(
                            onTap: () {
                              pickImage(source: ImageSource.gallery)
                                  .then((value) => {
                                        if (value != '')
                                          {
                                            imageCropperView(value, context)
                                                .then((value) {
                                              if (value != '') {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: ((context) {
                                                  return RecognizePage(
                                                      path: value);
                                                })));
                                              }
                                            })
                                          }
                                      });
                            },
                            child: Container(
                              child: Icon(
                                Icons.image,
                                size: 40,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              pickImage(source: ImageSource.camera)
                                  .then((value) => {
                                        if (value != '')
                                          {
                                            imageCropperView(value, context)
                                                .then((value) {
                                              if (value != '') {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: ((context) {
                                                  return RecognizePage(
                                                      path: value);
                                                })));
                                              }
                                            })
                                          }
                                      });
                            },
                            child: Container(
                              child: Icon(
                                Icons.camera_enhance,
                                size: 40,
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 2,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                  color: Color(0xfffDBFB51),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.black),
                ),
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
