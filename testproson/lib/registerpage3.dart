
import 'package:flutter/material.dart';
import 'package:testproson/childwidget.dart';
import 'package:testproson/registerpweight.dart';
import 'package:testproson/regpgender.dart';
import 'package:testproson/regpheight.dart';
import 'package:testproson/regpold.dart';

class RegisterP extends StatefulWidget {
  const RegisterP({Key? key}) : super(key: key);

  @override
  _RegisterPState createState() => _RegisterPState();
}

class _RegisterPState extends State<RegisterP> {
  PageController _pageController = PageController(
    initialPage: 0,
  );
  int currentIndex = 0;

  Widget childWidget = ChildWidget(
    number: AvailableNumber.First,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  ElevatedButton nextbutton=ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(minimumSize: Size(320,50)), child: Text('Next',style: TextStyle(color: Colors.white),));

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[500],
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          _pageController.animateToPage(
            value,
            duration: Duration(milliseconds: 200),
            curve: Curves.linear,
          );

          setState(() {});
        },
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            title: Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
              title: Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
              title: Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
              title: Text('')
          ),
        ],
      ),



      body: PageView(
          controller: _pageController,
          onPageChanged: (page) {
            setState(() {
              currentIndex = page;
            });
          },
          children: <Widget>[
            RegPGender(),
            RegisterPageOld(),
            RegisterPHeight(),
            RegisterPWeight()
          ],
        ),

    );

  }
}
