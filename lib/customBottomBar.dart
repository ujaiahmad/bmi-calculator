import 'package:flutter/material.dart';

import 'bottomBarIcon.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 7,
      color: Colors.blue,
      shape: AutomaticNotchedShape(
        RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomBarIcon('Calculate Your BMI', Icons.scale),
            BottomBarIcon('Love Yourself', Icons.person)
          ],
        ),
      ),
    );
  }
}
