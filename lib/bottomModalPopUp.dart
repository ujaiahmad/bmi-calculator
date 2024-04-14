import 'package:flutter/material.dart';
import 'calculateBMI.dart';

class BottomPopUp extends StatefulWidget {
  const BottomPopUp({super.key});

  @override
  State<BottomPopUp> createState() => _BottomPopUpState();
}

class _BottomPopUpState extends State<BottomPopUp> {
  CalculateBMI calculateBMI = CalculateBMI();
  late String bmi;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bmi = calculateBMI.getBMI();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Your BMI is',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      bmi,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Monserrat'),
                    ),
                    Text(
                      ' kg/m\u00B2',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Monserrat'),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              calculateBMI.getResults(),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[300])),
                onPressed: (() {
                  Navigator.pop(context);
                }),
                child: Text(
                  'Close',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
