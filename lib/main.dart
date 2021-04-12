import 'package:flutter/material.dart';
import 'login.dart'; 


void main() async {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
          bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black)
      ),
      title: "DTunes",
      home: LoginPage(), 
    );
  }
}