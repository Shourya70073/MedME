import 'package:flutter/material.dart';

class Reminder extends StatefulWidget {


  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 15, top: 15),
          child: Text(
            "Edit",
            style: TextStyle(
                color: Color.fromARGB(255, 177, 215, 9),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        actions: const [
          Icon(
            Icons.add,
            color: Colors.black,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Med Reminder",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 28),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.8,
              color: const Color.fromARGB(255, 177, 215, 9),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "No Reminder",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                Container(
                  height: 45,
                  width: 125,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 177, 215, 9),
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                    child: Text(
                      "Set Up",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.8,
              color: const Color.fromARGB(255, 177, 215, 9),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Other",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 177, 215, 9),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 12, right: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    "4:00",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 25),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 3),
                                    child: Text(
                                      "AM",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "Zoryl M 1mg",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                              const Text(
                                "Diabetes",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          Switch(
                            activeColor: Colors.white,
                            activeTrackColor: Colors.grey,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            onChanged: toggleSwitch,
                            value: isSwitched,
                          )
                        ]),
                  )),
            ),
            const SizedBox(
              height: 45,
            ),
            
          ],
        ),
      ),
    );
  }
}
