import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_cleaning_ui/constants/color_scheme.dart';
import 'package:home_cleaning_ui/pages/your_plan.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/image/logo.png",
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Clean Home\n  Clean Life.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 37,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Book Cleaners at the Comfort\n                of your home.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset("assets/image/splash.png"),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const YourPlan(),
                        ),
                      );
                    },
                    child: Container(
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: bgColor,
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
    );
  }
}
