import 'package:flutter/material.dart';
import 'package:home_cleaning_ui/constants/color_scheme.dart';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:home_cleaning_ui/pages/calendar.dart';

class YourPlan extends StatefulWidget {
  const YourPlan({Key? key}) : super(key: key);

  @override
  _YourPlanState createState() => _YourPlanState();
}

class _YourPlanState extends State<YourPlan> {
  // bool checkBoxValue = false;
  bool shouldCheck = false;
  bool shouldCheckDefault = false;
  String selectedFrequency = "Nothing";
  int counter = 0;
  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;
  int counter5 = 0;
  int counter6 = 0;

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
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(25),
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
                                    width: 160,
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
                            width: 5,
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
                                    width: 160,
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
                          frequency("Weekly"),
                          SizedBox(width: 20),
                          frequency("Bi-Weekly"),
                          SizedBox(width: 20),
                          frequency("Monthly"),
                        ],
                      ),
                      SizedBox(height: 25),
                      Text(
                        "Selected Extras",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              counter1++;
                                            });
                                          },
                                          child: extraImg("fridge"),
                                        ),
                                        counter1 != 0
                                            ? Positioned(
                                                // right: 25,
                                                left: 45,
                                                child: Container(
                                                  height: 24,
                                                  width: 24,
                                                  padding: EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                    color: pinkButton,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                  // constraints: BoxConstraints(
                                                  //   minWidth: 14,
                                                  //   minHeight: 14,
                                                  // ),
                                                  child: Center(
                                                    child: Text(
                                                      "$counter1",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13),
                                                      // textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : Positioned(
                                                left: 45,
                                                child: Container(),
                                              ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    extratitle("Inside Fridge"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              counter2++;
                                            });
                                          },
                                          child: extraImg("organise"),
                                        ),
                                        counter2 != 0
                                            ? Positioned(
                                                // right: 25,
                                                left: 45,
                                                child: Container(
                                                  height: 24,
                                                  width: 24,
                                                  padding: EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                    color: pinkButton,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                  // constraints: BoxConstraints(
                                                  //   minWidth: 14,
                                                  //   minHeight: 14,
                                                  // ),
                                                  child: Center(
                                                    child: Text(
                                                      "$counter2",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13),
                                                      // textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : Positioned(
                                                left: 45,
                                                child: Container(),
                                              ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    extratitle("Organise"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              counter3++;
                                            });
                                          },
                                          child: extraImg("blind"),
                                        ),
                                        counter3 != 0
                                            ? Positioned(
                                                // right: 25,
                                                left: 45,
                                                child: Container(
                                                  height: 24,
                                                  width: 24,
                                                  padding: EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                    color: pinkButton,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                  // constraints: BoxConstraints(
                                                  //   minWidth: 14,
                                                  //   minHeight: 14,
                                                  // ),
                                                  child: Center(
                                                    child: Text(
                                                      "$counter3",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13),
                                                      // textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : Positioned(
                                                left: 45,
                                                child: Container(),
                                              ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    extratitle("Small Blinds"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              counter4++;
                                            });
                                          },
                                          child: extraImg("garden"),
                                        ),
                                        counter4 != 0
                                            ? Positioned(
                                                // right: 25,
                                                left: 45,
                                                child: Container(
                                                  height: 24,
                                                  width: 24,
                                                  padding: EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                    color: pinkButton,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                  // constraints: BoxConstraints(
                                                  //   minWidth: 14,
                                                  //   minHeight: 14,
                                                  // ),
                                                  child: Center(
                                                    child: Text(
                                                      "$counter4",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13),
                                                      // textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : Positioned(
                                                left: 45,
                                                child: Container(),
                                              ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    extratitle("Patio"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              counter5++;
                                            });
                                          },
                                          child: extraImg("organise"),
                                        ),
                                        counter5 != 0
                                            ? Positioned(
                                                // right: 25,
                                                left: 45,
                                                child: Container(
                                                  height: 24,
                                                  width: 24,
                                                  padding: EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                    color: pinkButton,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                  // constraints: BoxConstraints(
                                                  //   minWidth: 14,
                                                  //   minHeight: 14,
                                                  // ),
                                                  child: Center(
                                                    child: Text(
                                                      "$counter5",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13),
                                                      // textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : Positioned(
                                                left: 45,
                                                child: Container(),
                                              ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    extratitle("Organise"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              counter6++;
                                            });
                                          },
                                          child: extraImg("blind"),
                                        ),
                                        counter6 != 0
                                            ? Positioned(
                                                // right: 25,
                                                left: 45,
                                                child: Container(
                                                  height: 24,
                                                  width: 24,
                                                  padding: EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                    color: pinkButton,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                  // constraints: BoxConstraints(
                                                  //   minWidth: 14,
                                                  //   minHeight: 14,
                                                  // ),
                                                  child: Center(
                                                    child: Text(
                                                      "$counter6",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13),
                                                      // textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : Positioned(
                                                left: 45,
                                                child: Container(),
                                              ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    extratitle("Small Blinds"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const Calendar(),
                          ),
                        );
                      },
                      child: Container(
                        width: 160,
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Calendar",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text extratitle(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 13,
      ),
    );
  }

  CircleAvatar extraImg(String img) {
    return CircleAvatar(
      backgroundColor: bgColor,
      radius: 35,
      child: Container(
        child: Image.asset(
          'assets/image/icons/$img.png',
          height: 35,
          width: 35,
        ),
      ),
    );
  }

  Expanded frequency(String text) {
    return Expanded(
      child: InkWell(
        onTap: () {
          changeFrequency(text);
        },
        child: Container(
          decoration: (selectedFrequency == text)
              ? BoxDecoration(
                  color: pinkButton,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )
              : BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
          height: 45,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: (selectedFrequency == text) ? Colors.white : Colors.grey,
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
