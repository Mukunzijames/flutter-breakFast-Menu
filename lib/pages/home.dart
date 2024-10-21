import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Breakfast Menu',
        style: TextStyle (
          color: Colors.black,
          fontSize: 25,
           fontWeight: FontWeight.bold,
          ),),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(10),
           decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          )
        ),
        
      )
    );
  }
}