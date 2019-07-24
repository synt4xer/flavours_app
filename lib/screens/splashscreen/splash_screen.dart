import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(child: Container(), preferredSize: Size(0, 0)),
      body: Container(
        decoration: BoxDecoration(color: Colors.orange[200]),
        child: Center(
          child: Image.asset("images/logo.png", height: 50,),
        ),
      ),
    );
  }
}