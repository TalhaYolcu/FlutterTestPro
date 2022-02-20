import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'dart:async';

import 'package:testproson/regpheight.dart';

class RegisterPageOld extends StatefulWidget {
  const RegisterPageOld({Key? key}) : super(key: key);

  @override
  _RegisterPageOldState createState() => _RegisterPageOldState();
}

class _RegisterPageOldState extends State<RegisterPageOld> {

  int currentAge=10;

  // ignore: avoid_types_as_parameter_names
  NumberPicker agePicker=NumberPicker(minValue: 0, maxValue: 100, value: 10, onChanged: (num) {});

  Image image=Image(image: AssetImage('assets/images/fire nation.jpg'));
  ElevatedButton nextbutton=ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(minimumSize: Size(320,50)), child: Text('Next',style: TextStyle(color: Colors.white),));

  Text text=Text('How old are you');

  void _handleValueChanged(value) {
    if (value != null) {
      setState(() => currentAge = value as int);
    }
  }

  
  @override
  Widget build(BuildContext context) {

    agePicker=NumberPicker(minValue: 0, maxValue: 100, value: 10, onChanged: (num) {_handleValueChanged(num);});

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        child: Column(

          children: [
            SizedBox(height: 50,),
            image,
            SizedBox(height: 50,),
            text,
            agePicker,
            nextbutton
    ],
        ),
      ),

    );
  }
}
