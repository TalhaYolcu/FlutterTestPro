import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:testproson/registerpweight.dart';

class RegisterPHeight extends StatefulWidget {
  const RegisterPHeight({Key? key}) : super(key: key);

  @override
  _RegisterPHeightState createState() => _RegisterPHeightState();
}

class _RegisterPHeightState extends State<RegisterPHeight> {

  Text text=Text('How much is your length?');
  int currentAge=10;

  // ignore: avoid_types_as_parameter_names
  NumberPicker heightPicker=NumberPicker(minValue: 0, maxValue: 250, value: 160, onChanged: (num) {});

  Image image=Image(image: AssetImage('assets/images/fire nation.jpg'));
  ElevatedButton nextbutton=ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(minimumSize: Size(320,50)), child: Text('Next',style: TextStyle(color: Colors.white),));



  void _handleValueChanged(value) {
    if (value != null) {
      setState(() => currentAge = value as int);
    }
  }

  @override
  Widget build(BuildContext context) {
    heightPicker=NumberPicker(minValue: 0, maxValue: 250, value: 160, onChanged: (num) {_handleValueChanged(num);});

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
            heightPicker,
            nextbutton
          ],
        ),
      ),

    );
  }
}
