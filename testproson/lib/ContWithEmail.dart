import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:testproson/registerpage3.dart';
import 'package:testproson/service/auth.dart';
import 'package:toggle_bar/toggle_bar.dart';

import 'SignUp.dart';

bool _obscureText=true;

class ContWithEmail extends StatefulWidget {
  const ContWithEmail({Key? key}) : super(key: key);

  @override
  _ContWithEmailState createState() => _ContWithEmailState();
}

class _ContWithEmailState extends State<ContWithEmail> {
  static final emailController = TextEditingController();
  static final passwordController = TextEditingController();
  //FirebaseAuth firebaseAuth=FirebaseAuth.instance;
  //final FirebaseFirestore _firestore=FirebaseFirestore.instance;
  final AuthService _authService=AuthService();




  List<String> labels = ['Sign Up','Sign In'];
  List<Column> columns = [Column(children: [
    TextField(
      cursorColor: Colors.white,
      textInputAction: TextInputAction.next,
      controller: emailController,
      decoration: InputDecoration(hintText: 'Email'),
    ),
    SizedBox(height: 4),
    TextField(
      textInputAction: TextInputAction.done,
      controller: passwordController,
      decoration: InputDecoration(hintText: 'Password',suffixIcon:InkWell(
        onTap: () {},

        child: Icon(
          Icons.visibility,

        )
      )),
    ),
    SizedBox(height: 4),
    TextField(
      textInputAction: TextInputAction.done,
      controller: passwordController,
      decoration: InputDecoration(hintText: 'Password',suffixIcon:InkWell(
        onTap:() {

          } ,

        child: Icon(
          Icons.visibility,
        ),
      )),
    ),
    SizedBox(height: 20),
    Text('Sed ut perspiciatis unde omnis iste natus Privacy Policy laudantium, totam rem aperiam, ea'),
    SizedBox(height: 100),
    ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(50),

      ),
      icon: Icon(Icons.lock_open, size: 32),
      label: Text('Continue', style: TextStyle(fontSize: 24)),
      onPressed:() {
      },
    )
  ],
  ),Column(children: [
    TextField(
      cursorColor: Colors.black,
      controller: emailController,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(hintText: 'Email'),
    ),
    SizedBox(height:4 ),
    TextField(
      textInputAction: TextInputAction.done,
      controller: passwordController,
      decoration: InputDecoration(hintText: 'Password',suffixIcon:InkWell(
        onTap:() {

        } ,

        child: Icon(
          Icons.visibility,
        ),
      ) ),
    ),
    SizedBox(height: 20),
    FlatButton(onPressed: () {}, child: Text('Forgot Password', style: TextStyle(
      color: Colors.lightBlue
    ),), ),
    //Text('Forgot Password?'),
    SizedBox(height: 100),
    ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(50)
      ),
      icon: Icon(Icons.lock_open,size:32),
      label: Text('Continue',style:TextStyle(fontSize: 24)),
      onPressed: () {
      } ,
    )
  ],
  )];
  int counter=0;

 /* @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }*/


  @override
  Widget build(BuildContext context) {

    TextField textField=TextField(
      textInputAction: TextInputAction.done,
      controller: passwordController,
      decoration: InputDecoration(labelText: 'Password',suffixIcon:InkWell(
        onTap:() {
            setState(() {
              _obscureText = !_obscureText;
            });
          } ,
        child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off,),
      )),
      obscureText: !_obscureText,
    );

    var el=ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(50)
      ),
      icon: Icon(Icons.lock_open,size:32),
      label: Text('Continue',style:TextStyle(fontSize: 24)),
      onPressed: () {
        _authService.signIn(emailController.text.trim(), passwordController.text.trim()).then((value) {
          return Navigator.push(context,MaterialPageRoute(builder: (context) => RegisterP()));
        });
      } ,
    );

    var el2=ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(50)
      ),
      icon: Icon(Icons.lock_open,size:32),
      label: Text('Continue',style:TextStyle(fontSize: 24)),
      onPressed: () {
        _authService.signUp(emailController.text.trim(), passwordController.text.trim()).then((value) {
          return Navigator.push(context,MaterialPageRoute(builder: (context) => RegisterP()));
        });
      } ,
    );

    columns[0].children[2]=textField;
    columns[0].children[4]=textField;

    columns[1].children[2]=textField;
    columns[1].children[6]=el;

    columns[0].children[8]=el2;



    return Scaffold(

      body: SingleChildScrollView(

        padding: EdgeInsets.all(15.0),

        child:Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            ToggleBar(labels: labels,
              textColor: Colors.white,
              selectedTextColor: Colors.black,
              backgroundColor: Colors.blueGrey,
              selectedTabColor: Colors.white,
              labelTextStyle: TextStyle(fontWeight:FontWeight.bold ),
              onSelectionUpdated: (index) {
                setState(() {
                  counter=index;
                });
              },),
            Column( children: [columns[counter]],),
          ],
        ),

        ),
      );


  }



}

