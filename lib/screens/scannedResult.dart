import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScannedResult extends StatefulWidget {
  const ScannedResult({Key? key}) : super(key: key);

  @override
  _ScannedResultState createState() => _ScannedResultState();
}

class _ScannedResultState extends State<ScannedResult> {
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
            'Scanned Result',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xffB2D70B)),
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text('Medicine Name: ',
                              style: TextStyle(
                                  fontSize: 15
                                  ,
                                  fontFamily: 'Poppins', 
                                   fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text('lorem ipsum dolor sit amet lorem ',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),

                          
                        ]),
                            height: 90,
                            width: double.infinity,
                            
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                        ),

                      );
                    }))
          ]),
        ));
  }
}
