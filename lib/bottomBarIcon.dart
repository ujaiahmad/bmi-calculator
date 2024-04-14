import 'package:flutter/material.dart';

class BottomBarIcon extends StatelessWidget {
  final String someText;
  final IconData someData;
  const BottomBarIcon(this.someText, this.someData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            someData,
            color: Colors.white,
            size: 27,
          ),
          Text(someText,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontFamily: 'Montserrat')),
        ],
      ),
    );
  }
}
