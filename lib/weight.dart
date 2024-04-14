import 'package:bmi_calculator/customFont.dart';
import 'package:flutter/material.dart';
import 'package:wheel_slider/wheel_slider.dart';

import 'calculateBMI.dart';

class WeightInput extends StatefulWidget {
  const WeightInput({super.key});

  @override
  State<WeightInput> createState() => _WeightInputState();
}

class _WeightInputState extends State<WeightInput> {
  CalculateBMI calculateBMI = CalculateBMI();
  double weight = 50;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextDesign('Weight'),
                  Text(
                    "(in kg)",
                  )
                ],
              ),
              // const SizedBox(
              //   height: 8,
              // ),
              // Text(weight.toString()),
              Padding(
                padding: const EdgeInsets.all(10),
                child: WheelSlider.number(
                  interval: 1,
                  totalCount: 500,
                  initValue: 50,
                  // animationType: Curves.easeInOut,
                  // animationDuration: Duration(seconds: 1),
                  selectedNumberStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 20),
                  unSelectedNumberStyle: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.grey),
                  // itemSize: 8,
                  // squeeze: 0.5,
                  // background:
                  //     Text('|', style: TextStyle(color: Colors.red, fontSize: 80)),
                  onValueChanged: (val) {
                    setState(() {
                      weight = double.parse(val.toString());
                      calculateBMI.getWeight(weight);
                    });
                    // print('Weight is $weight');
                  },
                  hapticFeedbackType: HapticFeedbackType.vibrate,
                  currentIndex: weight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
