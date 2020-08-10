import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    )
  );
}

class BottomNavigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigation();
  }
}

class _BottomNavigation extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar"),
      backgroundColor: Colors.teal,),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.teal,
        buttonBackgroundColor: Colors.red,
        height: 60,
        animationDuration: Duration(
          milliseconds: 200,
        ),
        index: 2, //.. default start position for icon
        animationCurve: Curves.bounceInOut,
        items: <Widget>[
        Icon(Icons.home, size: 30,color: Colors.white,),
       Icon(Icons.business_center, size: 30, color: Colors.white,),
          Icon(Icons.add,size: 30, color: Colors.white,),
          Icon(Icons.favorite, size: 30,color: Colors.white,),
          Icon(Icons.get_app, size: 30, color: Colors.white,),
        ],

        onTap: (index){
          //..tap icon to navigate...

        },
      ),

    );
  }

}
