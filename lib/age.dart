import 'package:bmi_calculator/calculateBMI.dart';
import 'package:bmi_calculator/customFont.dart';
import 'package:flutter/material.dart';

class AgeInput extends StatefulWidget {
  const AgeInput({super.key});

  @override
  State<AgeInput> createState() => _AgeInputState();
}

class _AgeInputState extends State<AgeInput> {
  int age = 25;
  CalculateBMI calculateBMI = CalculateBMI();
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
          CustomTextDesign('Age'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 50,
                child: TextButton(
                    onPressed: (() {
                      setState(() {
                        age--;
                        calculateBMI.setAge(age);
                      });
                    }),
                    child: Icon(Icons.remove)),
              ),
              Text(
                age.toString(),
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                width: 50,
                child: TextButton(
                    onPressed: (() {
                      setState(() {
                        age++;
                        calculateBMI.setAge(age);
                      });
                    }),
                    child: Icon(Icons.add)),
              )
            ],
          )
        ],
      ),
    );
  }
}
