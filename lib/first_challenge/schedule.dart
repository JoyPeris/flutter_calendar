import 'package:flutter/material.dart';
import 'package:calendar_tester/first_challenge/table_calender.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  static String tag='MyHomePage';

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _time = 'Not Set';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Colors.deepOrange,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFFFB415B),
                  Color(0xFFEE5623)
                ],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30,),
                Container(
                  //margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xFFFB415B),
                          Color(0xFFEE5623)
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft
                    ),
                  ),
                  height: 380,
                  child: TableCalendarExample(),
                ), //
                Container(
                  height: 300,
                  alignment: Alignment.topLeft,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      color: Colors.white
                  ),

                  child: Padding(

                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        SizedBox(height: 10,),
                        Text('PICK UP TIME'),
                        SizedBox(height: 10,),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          elevation: 4.0,
                          onPressed: () {
                            DatePicker.showTimePicker(context,
                                theme: DatePickerTheme(
                                  containerHeight: 210.0,
                                ),
                                showTitleActions: true, onConfirm: (time) {
                                  print('confirm $time');
                                  _time = '${time.hour} : ${time.minute} : ${time.second}';
                                  setState(() {});
                                }, currentTime: DateTime.now(), locale: LocaleType.en);
                            setState(() {});
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 40.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.access_time,
                                            size: 18.0,
                                            color: Colors.deepOrange,
                                          ),
                                          Text(
                                            " $_time",
                                            style: TextStyle(
                                                color: Colors.deepOrange,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "  Change",
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                          color: Colors.white,
                        ),
                        SizedBox(height: 20,),
                        Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            width:340,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23.0),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFFB415B),
                                    Color(0xFFEE5623)
                                  ],
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft
                              ),
                            ),
                            child: Center(
                              child: FlatButton(onPressed: (){

                              },
                                child:       Text(
                                  "ADD SCHEDULE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),     ),
                              ),
                            ))

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}