import 'package:flutter/material.dart';
import 'package:wheel_slider/wheel_slider.dart';
import 'calculateBMI.dart';
import 'customFont.dart';

class HeightSlider extends StatefulWidget {
  const HeightSlider({super.key});

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  CalculateBMI calculateBMI = CalculateBMI();
  double heightInput = 200;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextDesign('Height (in cm)'),
          ),
          // WheelSlider.number(
          //   interval: 1,
          //   // showPointer: true,
          //   background: Text('|'),

          //   currentIndex: heightInput,
          //   totalCount: 300,
          //   initValue: heightInput,
          //   animationType: Curves.easeInOut,
          //   animationDuration: Duration(seconds: 1),
          //   selectedNumberStyle: TextStyle(
          //       fontWeight: FontWeight.bold, color: Colors.red, fontSize: 20),
          //   unSelectedNumberStyle:
          //       TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
          //   // itemSize: 8,
          //   // squeeze: 0.5,
          //   // background:
          //   //     Text('|', style: TextStyle(color: Colors.red, fontSize: 80)),
          //   onValueChanged: (val) {
          //     setState(() {
          //       heightInput = val;
          //     });
          //   },
          //   hapticFeedbackType: HapticFeedbackType.vibrate,
          // ),
          Text(
            heightInput.toString(),
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.red, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: WheelSlider(
              totalCount: 300,
              initValue: 150,
              itemSize: 8,
              squeeze: 0.5,
              pointerColor: Colors.red,
              // background:
              //     Text('|', style: TextStyle(color: Colors.red, fontSize: 80)),
              onValueChanged: (val) {
                setState(() {
                  heightInput = double.parse(val.toString());
                  calculateBMI.getHeight(heightInput);
                  // double fromCalculateClass = calculateBMI.displayHeight();
                  // print('Height from the is $fromCalculateClass');
                });
              },
              hapticFeedbackType: HapticFeedbackType.vibrate,
            ),
          ),
          // Slider(
          //   min: 0,
          //   max: 300,
          //   value: heightInput,
          //   onChanged: (double value) {
          //     setState(() {
          //       heightInput = value;
          //     });
          //   },
          // ),
        ],
      ),
    );
  }
}
