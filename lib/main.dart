import 'package:bmi_calculator/age.dart';
import 'package:bmi_calculator/bottomModalPopUp.dart';
import 'package:bmi_calculator/calculateBMI.dart';
import 'package:bmi_calculator/customBottomBar.dart';
import 'package:bmi_calculator/customFont.dart';
import 'package:bmi_calculator/heightSlider.dart';
import 'package:bmi_calculator/squareBoxCard.dart';
import 'package:bmi_calculator/weight.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CalculateBMI calculateBMI = CalculateBMI();
  bool isMale = true;

  void switchGender() {
    setState(() {
      isMale = !isMale;
      // print('this is isMale :$isMale');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextDesign('BMI Calculator'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 35),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 150,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: SquareCardBox(
                        gender: 'Male',
                        genderIcon: Icons.male,
                        genderColor: Colors.orange,
                        genderSelected: isMale,
                        switchGender: switchGender),
                  ),
                  Expanded(
                    child: SquareCardBox(
                        gender: 'Female',
                        genderIcon: Icons.female,
                        genderColor: Color.fromARGB(255, 228, 83, 131),
                        genderSelected: !isMale,
                        switchGender: switchGender),
                  ),
                ],
              ),
            ),
            Expanded(child: HeightSlider()),
            SizedBox(
              height: 200,
              child: Row(
                children: [WeightInput(), AgeInput()],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(
            Icons.calculate,
            size: 30,
          ),
          onPressed: () {
            // double bmi = 0;
            // setState(() {
            //   // double getHeight = calculateBMI.displayHeight();
            //   // print(getHeight);
            //   // double getWeight = calculateBMI.displayWeight();
            //   // print(getWeight);
            //   bmi = calculateBMI.getBMI();
            //   // double fromCalculateClass = calculateBMI.displayHeight();
            //   // print('Height from main is $fromCalculateClass');
            //   print('bmi is $bmi');
            // });
            showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                builder: (context) => BottomPopUp());
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
