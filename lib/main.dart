import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'Screen.dart';

main() => runApp(BMICalculator());

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "BMI_Calculator",
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(
        imageSrc: 'assets/splash.png',
        imageSize: 280,
        duration: 7070,
        navigateRoute: MyHome(),
      ),
    );
  }
}
