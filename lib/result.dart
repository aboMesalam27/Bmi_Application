import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen.dart';

class BMI_RESULT extends StatefulWidget {
  final result;
  final isMale;

  BMI_RESULT({this.result, this.isMale});

  @override
  _BMI_RESULTState createState() => _BMI_RESULTState();
}

class _BMI_RESULTState extends State<BMI_RESULT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
            )),
        backgroundColor: Color.fromRGBO(23, 32, 42, 1),
        centerTitle: true,
        title: Text(
          "BMI_RESULT",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(23, 32, 42, 1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 110, top: 10),
              child: Text(
                "Your Result",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        " ${widget.isMale ? "MALE" : "FEMALE"}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ),
                    Center(
                      child: Text(
                        "${widget.result}",
                        style: TextStyle(
                            fontSize: 150,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),

                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromRGBO(33, 47, 61, 1),
                ),
                height: 530,
                width: double.infinity,
              ),
            )
          ],
        ),
      ),
    );
  }
}
