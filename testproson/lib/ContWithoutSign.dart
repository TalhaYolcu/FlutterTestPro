import 'package:flutter/material.dart';
import 'package:testproson/registerpage3.dart';

import 'ContWithEmail.dart';

class ContWithoutSign extends StatelessWidget {
  const ContWithoutSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(15),
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 50,),
              TextField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Enter your name'

                ),
              ),
              ElevatedButton(onPressed:()=>{Navigator.push(
                context, MaterialPageRoute(builder: (context) => RegisterP()),)}, child: Text('Next'), style: ElevatedButton.styleFrom(
                  primary: Colors.green
              ),  )
            ],
          ),
        )

    );
  }
}
