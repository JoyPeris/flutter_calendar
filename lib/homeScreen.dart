import 'package:calendar_tester/first_challenge/schedule.dart';
import 'package:flutter/material.dart';


class homeScreen extends StatefulWidget{
  static String tag='homeScreen';

  @override
  State<StatefulWidget> createState() => new _homeScreenState();
}

class _homeScreenState  extends State<homeScreen>{

  var selectedMenu = 'ADD SCHEDULE';
  final logo=  Hero(
    tag: 'hero',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48,
      child: Image.asset('images/logo.png'),
    ),

  );
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
        body: Container(
        padding: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0, bottom: 0.0),
    child: ListView(

    //crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      SizedBox(height: 20,),
      logo,
    Text(
    'waste app',
    textAlign: TextAlign.center,

    style: TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Pacifico"
    ),
    ),
      SizedBox(height: 40,),
      Container(

        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _buildMenuItem('ADD SCHEDULE', Icons.schedule),
            _buildMenuItem('COLLECTIONS', Icons.collections),
            _buildMenuItem('SEARCH USER', Icons.search),
          ]),
        ),
      ),
    ]
    ),),);
  }
  Widget _buildMenuItem(String name, iconData) {
    return InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          selectMenuOption(name);
          if(selectedMenu== "ADD SCHEDULE"){
          Navigator.of(context).pushNamed(MyHomePage.tag);}
        },
        child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 300),
            height: selectedMenu == name ? 100.0 : 75.0,
            width: selectedMenu == name ? 100.0 : 75.0,
            color: selectedMenu ==name
                ? Color(0xFFFD3566)
                : Colors.transparent,
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                iconData,
                color: selectedMenu == name ? Colors.white : Colors.grey,
                size: 25.0,
              ),
              SizedBox(height: 12.0),
              Text(name,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color:
                      selectedMenu == name ? Colors.white : Colors.grey,
                      fontSize: 10.0))
            ])));
  }

  selectMenuOption(String foodName) {
    setState(() {
      selectedMenu = foodName;
    });
  }
}
