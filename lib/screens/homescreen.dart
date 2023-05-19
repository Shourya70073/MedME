// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:medme/screens/brainTumour.dart';
import 'package:medme/screens/medscan.dart';
import 'package:url_launcher/url_launcher.dart';

class homescreen extends StatefulWidget {
  final result;
  // ignore: use_key_in_widget_constructors
  const homescreen({@required this.result});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  Map<String, dynamic> news = {};
  bool isApiFetching = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getNewsResponse();
    setState(() {
      isApiFetching = false;
    });
  }

  Future getNewsResponse() async {
    Uri url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=4a28a6d219b444bbb404c0cba34aeff1");

    try {
      final response = await http.get(url);
      print(response.statusCode);
      Map<String, dynamic> res = jsonDecode(response.body);
      news = res;
      print(res);
      return news;
    } catch (e) {
      return news;
      print(e);
    }
  }

  List<Color> color = [
    Color(0xff7eda92),
    Color(0xffb15ef2),
    Color(0xff5cadff),
    Color(0xff7eda92),
    Color(0xffb15ef2),
    Color(0xff5cadff),
  ];

  List<Widget> route = [
    medscan(),
    brainTumour(),
    medscan(),
    medscan(),
    medscan(),
    medscan(),
  ];

  List<String> service = [
    "Med Scan",
    "Tumour ",
    "Pnuemonia ",
    "BMI",
    "Reminder",
    "Doctor"
  ];
  List<String> symp = [
    "medScan.png",
    "tumour.png",
    "pneumonia.png",
    "bmi.png",
    "medReminer.png",
    "doctor.png"
  ];
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: isApiFetching == false
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            widget.result["from"]=="phone"?CircleAvatar(
                              backgroundImage: FileImage(widget.result["photo"])
                                  
                            ):CircleAvatar(
                              backgroundImage: NetworkImage(widget.result["result"].photoUrl)
                                  
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 3,
                              width: 60,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Hello ",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                widget.result["from"]=="phone"?
                                Text(
                                  widget.result["name"],
                                  style: TextStyle(
                                      color: Color(0xfffDBFB51),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ):Text(
                                  widget.result["result"].displayName,
                                  style: TextStyle(
                                      color: Color(0xfffDBFB51),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(
                              "How can we help you",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Today?",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 3,
                              width: 60,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Features",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      height: 270,
                      child: GridView.builder(
                          itemCount: 6,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Get.to(() => medscan());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 98,
                                      width: 98,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                          color: color[index],
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child:
                                          Image.asset("assets/images/${symp[index]}"),
                                    ),
                                    Text(service[index])
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Health News",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 180,
                              width: double.infinity,
                              child: isApiFetching == false
                                  ? ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return FutureBuilder(
                                            future: getNewsResponse(),
                                            builder: (context, snapshots) {
                                              if (snapshots.hasData) {
                                                return GestureDetector(
                                                  onTap: () async {
                                                    String url =
                                                        news["articles"][index]
                                                            ["url"];

                                                    await launchUrl(
                                                        Uri.parse(url));
                                                  },
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 8),
                                                    child: Container(
                                                      height: 180,
                                                      width: 270,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                            color: Colors.black,
                                                            width: 2),
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          Image.network(
                                                            news["articles"]
                                                                        [index][
                                                                    "urlToImage"] ??
                                                                "https://i.ytimg.com/vi/up6xi19eROI/maxresdefault.jpg",
                                                            fit: BoxFit.fitWidth,
                                                          ),
                                                          Positioned.fill(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.5),
                                                              ),
                                                            ),
                                                          ),
                                                          Center(
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          10),
                                                                  child: Text(
                                                                    news["articles"]
                                                                            [
                                                                            index]
                                                                        [
                                                                        "title"],
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              } else {
                                                return Container();
                                              }
                                            });
                                      })
                                  : CircularProgressIndicator(
                                      color: Color(0xfffDBFB51),
                                    ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Center(
                child: CircularProgressIndicator(
                  color: Color(0xfffDBFB51),
                ),
              ),
      ),
    ));
  }
}
