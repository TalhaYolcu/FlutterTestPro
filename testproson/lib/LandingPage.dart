import 'package:flutter/material.dart';
import 'package:testproson/ContWithEmail.dart';
import 'package:testproson/ContWithoutSign.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/testpro_backgroundjpg.jpg'),
                fit:BoxFit.cover
            )

        ),
        child: Column(
          children: <Widget>[
            Text('TestPro',style: TextStyle(
                color: Colors.white,fontSize: 25
            ),
            ),
            Image(image: AssetImage('assets/images/fire nation.jpg'),),
            Text('TestPro is an app about fittness',style: TextStyle(
                color: Colors.white,fontSize: 25),),
            ElevatedButton(onPressed:()=>{Navigator.push(
              context, MaterialPageRoute(builder: (context) => ContWithEmail()),)}, child: Text('Continue with email'), style: ElevatedButton.styleFrom(
                primary: Colors.green
            ),  ),
            SizedBox(
              height: 150,
            ),
            ElevatedButton(onPressed:()=>{Navigator.push(
              context,MaterialPageRoute(builder: (context) => ContWithoutSign()),)}, child: Text('Continue without signing up'),  style: ElevatedButton.styleFrom(
                primary: Colors.red
            ),  )

          ],

        ),
        padding: EdgeInsets.fromLTRB(10.0,80,30.0,40.0),
      ),



    );
  }
}


