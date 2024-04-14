import 'package:bmi_calculator/calculateBMI.dart';
import 'package:bmi_calculator/customFont.dart';
import 'package:flutter/material.dart';

class SquareCardBox extends StatefulWidget {
  final String gender;
  final IconData genderIcon;
  final Color genderColor;
  bool genderSelected;
  Function switchGender;
  SquareCardBox(
      {super.key,
      required this.gender,
      required this.genderIcon,
      required this.genderColor,
      required this.genderSelected,
      required this.switchGender});

  @override
  State<SquareCardBox> createState() => _SquareCardBoxState();
}

class _SquareCardBoxState extends State<SquareCardBox> {
  CalculateBMI calculateBMI = CalculateBMI();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onHighlightChanged: (value) {
      //   value = !value;
      //   print(value);
      // },
      // highlightColor: Colors.red,
      borderRadius: BorderRadius.all(Radius.circular(20)),
      // highlightColor: Color,
      onTap: () {
        setState(() {
          calculateBMI.setGender(widget.gender);
          widget.switchGender();
        });
        // print('This has been tapped ${widget.gender}');
        // print('calculate gender is : ${calculateBMI.displayGender()}');
      },
      child: Card(
        shape: RoundedRectangleBorder(
          side: (widget.genderSelected)
              ? BorderSide(width: 2, color: Colors.grey)
              : BorderSide(width: 0, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              widget.genderIcon,
              size: 80,
              color: widget.genderColor,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextDesign(widget.gender),
            ),
          ],
        ),
      ),
    );
  }
}
