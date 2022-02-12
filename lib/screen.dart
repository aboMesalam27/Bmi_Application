import 'dart:math';
import 'package:bmi_1/result.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool isMale = true;
  double height = 120.0;
  int weight = 40;
  int Age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(23, 32, 42, 1),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromRGBO(23, 32, 42, 1),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesome.male,
                                size: 100,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: isMale
                                  ? Color.fromRGBO(100, 30, 22, 1)
                                  : Color.fromRGBO(44, 62, 80, 1),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesome.female,
                                size: 100,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: isMale
                                  ? Color.fromRGBO(44, 62, 80, 1)
                                  : Color.fromRGBO(100, 30, 22, 1),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(213, 216, 220, 1)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.round()}",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Cm",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(213, 216, 220, 1)),
                          )
                        ],
                      ),
                      Slider(
                          activeColor: Color.fromRGBO(100, 30, 22, 1),
                          label: height.round().toString(),
                          //inactiveColor: Colors.white,
                          value: height,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          }),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(44, 62, 80, 1),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                color: Color.fromRGBO(213, 216, 220, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                // color: Colors.white,
                              ),
                            ),
                            Text(
                              "$weight",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  child: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  heroTag: "age+",
                                  backgroundColor:
                                  Color.fromRGBO(28, 40, 51, 1),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  heroTag: "age-",
                                  backgroundColor:
                                  Color.fromRGBO(28, 40, 51, 1),
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(44, 62, 80, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                color: Color.fromRGBO(213, 216, 220, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                // color: Colors.white,
                              ),
                            ),
                            Text(
                              "$Age",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  child: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      Age++;
                                    });
                                  },
                                  mini: true,
                                  heroTag: "age+",
                                  backgroundColor:
                                  Color.fromRGBO(28, 40, 51, 1),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      Age--;
                                    });
                                  },
                                  mini: true,
                                  heroTag: "age-",
                                  backgroundColor:
                                  Color.fromRGBO(28, 40, 51, 1),
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(44, 62, 80, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              color: Color.fromRGBO(100, 30, 22, 1),
              width: double.infinity,
              child: MaterialButton(
                child: Text(
                  "CALCULATE YOUR BMI",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            BMI_RESULT(result: result.round(), isMale:  isMale),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
