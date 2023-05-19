import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class MedicineInfo extends StatefulWidget {
  const MedicineInfo({Key? key}) : super(key: key);

  @override
  _MedicineInfoState createState() => _MedicineInfoState();
}

class _MedicineInfoState extends State<MedicineInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffB2D70B),
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text(
          'Medicines',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xffB2D70B)),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 140,
                width: 300,
                child: Image(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.CjEDMQk7TEODMKh4MZFfGgD6D6?pid=ImgDet&rs=1"),
                  fit: BoxFit.contain,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Paracetamol IP 500 mg',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Paracetamol Uses:- Paracetamol is used for pain relief and fever. It is used to relieve pain in conditions like headache, muscle pain, or dental pain.',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'How Paracetamol works- Paracetamol is an analgesic (pain reliever) and anti-pyretic (fever reducer). It works by blocking the release of certain chemical messengers that cause pain and fever.',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Common side effects of Paracetamol- Nausea, Vomiting, Insomnia (difficulty in sleeping), Headache, Constipation, Itching',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () async {
                  await launchUrl(
                     Uri.parse( "https://www.1mg.com/drugs/dolo-650-tablet-74467"));
                },
                child: Container(
                  height: 60,
                  width: 300,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffB2D70B),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Buy Now',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Rs 26',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
