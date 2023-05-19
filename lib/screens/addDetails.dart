// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medme/screens/homescreen.dart';
import 'package:medme/widget/yellowbutton.dart';

class addDetails extends StatefulWidget {
  final phoneNumber;

  addDetails({required this.phoneNumber});

  @override
  State<addDetails> createState() => _addDetailsState();
}

class _addDetailsState extends State<addDetails> {
  String dropDownvalue = "";
  File? photo;
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();

  void addImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? phototemp = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      photo = File(phototemp!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text(
          "User Details",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xfffDBFB51),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  addImage();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xfffDBFB51),
                    backgroundImage: photo != null ? FileImage(photo!) : null,
                    child: photo == null
                        ? Text(
                            "+ Add Pic",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          )
                        : Text(""),
                    // Add avatar content (e.g., image, text)
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: Colors.black)),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: c1,
                    decoration: InputDecoration(
                      hintText: 'Name',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: Colors.black)),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: c2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Age',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration.collapsed(
                              hintText: 'Gender',
                            ),
                            value: 'Male', // Set the initial selected value
                            onChanged: (value) {
                              dropDownvalue = value!;
                            },
                            items: [
                              DropdownMenuItem(
                                value: 'Male',
                                child: Text('Male'),
                              ),
                              DropdownMenuItem(
                                value: 'Female',
                                child: Text('Female'),
                              ),
                              DropdownMenuItem(
                                value: 'Others',
                                child: Text('Others'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                          onTap: () {
                           if(c1.text!=null && c2.text!=null && photo!=null){
                             Get.offAll(() => homescreen(result: {
                                  "from":"phone",
                                  "photo": photo,
                                  "name":c1.text,
                                }));
                           }
                          },
                          child: yellowbutt(text: "Submit")),
                      SizedBox(
                        height: 30,
                      ),
                      Text("Want to change the SignIn Method?"),
                      SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          "Go Back",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
