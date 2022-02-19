import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class RegisterPWeight extends StatefulWidget {
  const RegisterPWeight({Key? key}) : super(key: key);

  @override
  _RegisterPWeightState createState() => _RegisterPWeightState();
}

class _RegisterPWeightState extends State<RegisterPWeight> {

  Text text=Text('How much is your weight?');
  int currentAge=10;

  // ignore: avoid_types_as_parameter_names
  NumberPicker weightPicker=NumberPicker(minValue: 0, maxValue: 250, value: 60, onChanged: (num) {});

  Image image=Image(image: AssetImage('assets/images/fire nation.jpg'));
  ElevatedButton nextbutton=ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(minimumSize: Size(320,50)), child: Text('Next',style: TextStyle(color: Colors.white),));


  void _handleValueChanged(value) {
    if (value != null) {
      setState(() => currentAge = value as int);
    }
  }

  @override
  Widget build(BuildContext context) {
    weightPicker=NumberPicker(minValue: 0, maxValue: 250, value: 60, onChanged: (num) {_handleValueChanged(num);});

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
            weightPicker,
            nextbutton
          ],
        ),
      ),

    );
  }
}
