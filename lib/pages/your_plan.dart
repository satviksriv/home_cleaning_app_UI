import 'package:flutter/material.dart';
import 'package:home_cleaning_ui/constants/color_scheme.dart';
import 'package:custom_check_box/custom_check_box.dart';

class YourPlan extends StatefulWidget {
  const YourPlan({Key? key}) : super(key: key);

  @override
  _YourPlanState createState() => _YourPlanState();
}

class _YourPlanState extends State<YourPlan> {
  // bool checkBoxValue = false;
  bool shouldCheck = false;
  bool shouldCheckDefault = false;
  String selectedFrequency = "Monthly";

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Ubuntu'),
      home: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_left,
              size: 50,
            ),
          ),
          title: Text(
            "Your Plan",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: bgColor,
          centerTitle: true,
          elevation: 0,
        ),
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Selected Cleaning",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: veryLightPurpleBg,
                              ),
                              child: Image.asset(
                                "assets/image/img1.png",
                                height: 130,
                                width: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Initial Cleaning",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CustomCheckBox(
                              value: shouldCheck,
                              shouldShowBorder: false,
                              borderColor: Colors.grey,
                              checkedFillColor: Colors.pink,
                              borderRadius: 15,
                              borderWidth: 0,
                              checkBoxSize: 20,
                              onChanged: (val) {
                                //do your stuff here
                                setState(() {
                                  shouldCheck = val;
                                  shouldCheckDefault = false;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: veryLightPurpleBg,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Image.asset(
                                "assets/image/img2.png",
                                height: 130,
                                width: 150,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Upkeep Cleaning",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CustomCheckBox(
                              value: shouldCheckDefault,
                              shouldShowBorder: false,
                              borderColor: Colors.grey,
                              checkedFillColor: pinkButton,
                              borderRadius: 15,
                              borderWidth: 0,
                              checkBoxSize: 20,
                              onChanged: (val) {
                                //do your stuff here
                                setState(() {
                                  shouldCheckDefault = val;
                                  shouldCheck = false;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Selected Frequency",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            changeFrequency("Weekly");
                          },
                          child: Container(
                            decoration: (selectedFrequency == "Weekly")
                                ? BoxDecoration(
                                    color: pinkButton,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  )
                                : BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                            height: 45,
                            child: Center(
                              child: Text(
                                "Weekly",
                                style: TextStyle(
                                  color: (selectedFrequency == "Weekly")
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            changeFrequency("Bi-Weekly");
                          },
                          child: Container(
                            decoration: (selectedFrequency == "Bi-Weekly")
                                ? BoxDecoration(
                                    color: pinkButton,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  )
                                : BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                            height: 45,
                            child: Center(
                              child: Text(
                                "Bi-Weekly",
                                style: TextStyle(
                                  color: (selectedFrequency == "Bi-Weekly")
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            changeFrequency("Monthly");
                          },
                          child: Container(
                            decoration: (selectedFrequency == "Monthly")
                                ? BoxDecoration(
                                    color: pinkButton,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  )
                                : BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                            height: 45,
                            child: Center(
                              child: Text(
                                "Monthly",
                                style: TextStyle(
                                  color: (selectedFrequency == "Monthly")
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void changeFrequency(String s) {
    selectedFrequency = s;
    setState(() {});
  }
}
