import 'package:flutter/material.dart';
import 'dart:async';
import 'package:numberpicker/numberpicker.dart';


class ChildWidget extends StatelessWidget {
  final AvailableNumber number;

  ChildWidget({Key? key, required this.number}) : super(key: key);










  @override
  Widget build(BuildContext context) {











    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
    );
  }


}

enum AvailableNumber { First, Second, Third }