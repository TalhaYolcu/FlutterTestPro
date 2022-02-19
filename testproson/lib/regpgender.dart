import 'package:flutter/material.dart';
import 'package:testproson/regpold.dart';


class RegPGender extends StatefulWidget {
  const RegPGender({Key? key}) : super(key: key);

  @override
  _RegPGenderState createState() => _RegPGenderState();
}

class _RegPGenderState extends State<RegPGender> {

  Text text=Text('What is your sex?');
  Icon male=Icon(Icons.male);
  Icon male_outline=Icon(Icons.male_outlined);

  Icon female=Icon(Icons.female);
  Icon female_outline=Icon(Icons.female_outlined);

  Image image=Image(image: AssetImage('assets/images/fire nation.jpg'));
  ElevatedButton nextbutton=ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(minimumSize: Size(320,50)), child: Text('Next',style: TextStyle(color: Colors.white),));


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50,),
          Image(image: AssetImage('assets/images/fire nation.jpg')),
          Text('What is your sex?'),
          OutlinedButton(onPressed: () {}, child: Icon(Icons.male)),
          SizedBox(width: 20,),
          OutlinedButton(onPressed: () {}, child: Icon(Icons.female)),
          SizedBox(height: 100,),
          nextbutton
        ],
      ),
    );
  }
}
